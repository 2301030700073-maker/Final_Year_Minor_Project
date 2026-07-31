package androidx.sqlite.db;

import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import com.google.android.material.internal.CheckableGroup;
import java.io.Closeable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Factory {
        SupportSQLiteOpenHelper create(CheckableGroup checkableGroup);
    }

    String getDatabaseName();

    FrameworkSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);
}
