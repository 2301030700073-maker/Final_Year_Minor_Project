package androidx.room;

import androidx.sqlite.SQLiteConnection;
import kotlinx.serialization.json.internal.Composer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final Composer onValidateSchema(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        throw new IllegalStateException("NOP delegate should never be called");
    }
}
