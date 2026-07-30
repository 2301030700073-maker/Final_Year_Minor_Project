package com.android.contacts.database;

import android.database.AbstractCursor;
import android.database.CursorIndexOutOfBoundsException;

/* loaded from: classes.dex */
public final class EmptyCursor extends AbstractCursor {
    private String[] mColumns;

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        return 0;
    }

    public EmptyCursor(String[] strArr) {
        this.mColumns = strArr;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return this.mColumns;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i) {
        throw cursorException();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i) {
        throw cursorException();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i) {
        throw cursorException();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i) {
        throw cursorException();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i) {
        throw cursorException();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i) {
        throw cursorException();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i) {
        throw cursorException();
    }

    private CursorIndexOutOfBoundsException cursorException() {
        return new CursorIndexOutOfBoundsException("Operation not permitted on an empty cursor.");
    }
}
