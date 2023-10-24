package models;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;

public class Records implements Serializable {
    private final Deque<Entry> records;
    private final SimpleDateFormat simpleDateFormat;

    public Records() {
        records = new ArrayDeque<>();
        simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
    }

    public Deque<Entry> getRecords() {
        return records;
    }

    public void addEntry(Entry entry) {
        records.addFirst(entry);
    }

    public SimpleDateFormat getSimpleDateFormat() {
        return simpleDateFormat;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (! (o instanceof Records)) return false;
        Records records = (Records) o;
        return Objects.equals(getRecords(), records.getRecords()) && Objects.equals(getSimpleDateFormat(), records.getSimpleDateFormat());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getRecords(), getSimpleDateFormat());
    }
}
