package androidx.sqlite.db;

import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import com.google.android.material.internal.CheckableGroup;
import java.io.Closeable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Factory {
        SupportSQLiteOpenHelper create(CheckableGroup checkableGroup);
    }

    String getDatabaseName();

    FrameworkSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);
}
