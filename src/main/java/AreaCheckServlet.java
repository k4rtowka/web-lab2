
import models.Records;
import models.Entry;
import models.Utils;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet("/area_check")
public class AreaCheckServlet extends HttpServlet {

    // Переопределение doGet и doPost запросов

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        double x = 0;
        double y = 0;
        double r = 0;

        try {
            x = Utils.getDoubleParameter(request, "x");
            y = Utils.getDoubleParameter(request, "y");
            r = Utils.getDoubleParameter(request, "r");
        } catch (NullPointerException | NumberFormatException ig) {
            response.sendRedirect("index.jsp");
        }

        if ((r != 0) & (r > 0)) {

            boolean result = getResult(x, y, r);
            Date currentTime = new Date();

            Entry entry = new Entry(x, y, r, result, currentTime);

            HttpSession session = request.getSession();

            Records records = (Records) session.getAttribute("records");
            records = records == null ? new Records() : records;

            records.addEntry(entry);
            session.setAttribute("records", records);

            setResult(x, y, r, result, currentTime, records, request);

            response.sendRedirect("jsp/result.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        doPost(request, response);
    }

    // Проверка X, Y, R на принадлежность графику

    private boolean getResult(double x, double y, double r) {
        return inFirstQuarter(x, y, r) || inSecondQuarter(x, y, r) || inThirdQuarter(x, y, r);
    }

    private boolean inFirstQuarter(double x, double y, double r){
        return ((x >= 0) &&
                (y >= 0) &&
                (y <= r) &&
                (x <= r / 2) &&
                (x / 2 + y <= r));
    }

    private boolean inSecondQuarter(double x, double y, double r){
        return ((x <= 0) &&
                (y >= 0) &&
                (y <= r) &&
                (x >= -r));
    }

    private boolean inThirdQuarter(double x, double y, double r){
        return ((x <= 0) &&
                (y <= 0) &&
                (x * x + y * y <= r * r));
    }

    // Результат для 1 точки выбранной на графике

    private void setResult(double x, double y, double r, boolean result, Date currentTime, Records records, HttpServletRequest request){
        request.getSession().setAttribute("xLast", x);
        request.getSession().setAttribute("yLast", y);
        request.getSession().setAttribute("rLast", r);
        request.getSession().setAttribute("queryTimeLast", records.getSimpleDateFormat().format(currentTime));
        request.getSession().setAttribute("resultLast", result ? "<div style=\"color: green\">Попал</div>" :
                "<div style=\"color: red\">Промах</div>");
        request.getSession().setAttribute("xGraph", (300 / 2 + (x + 0.02) / r * 100));
        request.getSession().setAttribute("yGraph", (300 / 2 + (y - 0.02) / r * -100));
        request.getSession().setAttribute("fillGraph", result ? "green" : "red");
    }
}
