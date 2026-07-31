package androidx.room;

import androidx.room.RoomOpenDelegate;
import androidx.sqlite.SQLiteConnection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RoomConnectionManager$NoOpOpenDelegate extends RoomOpenDelegate {
    @Override // androidx.room.RoomOpenDelegate
    public final void createAllTables(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void dropAllTables(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onCreate(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onOpen(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPostMigrate(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final void onPreMigrate(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }

    @Override // androidx.room.RoomOpenDelegate
    public final RoomOpenDelegate.ValidationResult onValidateSchema(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }
}
