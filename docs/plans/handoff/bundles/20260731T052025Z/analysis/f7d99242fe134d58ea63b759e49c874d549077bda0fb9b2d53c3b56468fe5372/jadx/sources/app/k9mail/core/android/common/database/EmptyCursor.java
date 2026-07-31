package app.k9mail.core.android.common.database;

import android.database.AbstractCursor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmptyCursor extends AbstractCursor {
    @Override // android.database.AbstractCursor, android.database.Cursor
    public final String[] getColumnNames() {
        return new String[0];
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final int getCount() {
        return 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final double getDouble(int i) {
        return 0.0d;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final float getFloat(int i) {
        return 0.0f;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final int getInt(int i) {
        return 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final long getLong(int i) {
        return 0L;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final short getShort(int i) {
        return (short) 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final /* bridge */ /* synthetic */ String getString(int i) {
        return null;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public final boolean isNull(int i) {
        return true;
    }
}
