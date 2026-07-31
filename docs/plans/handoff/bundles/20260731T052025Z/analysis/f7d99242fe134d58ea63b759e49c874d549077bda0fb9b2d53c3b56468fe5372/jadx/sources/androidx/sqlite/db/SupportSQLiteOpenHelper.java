package androidx.sqlite.db;

import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import com.fsck.k9.activity.MessageHomeActivity;
import java.io.Closeable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SupportSQLiteOpenHelper extends Closeable {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Factory {
        SupportSQLiteOpenHelper create(MessageHomeActivity.LaunchData launchData);
    }

    String getDatabaseName();

    FrameworkSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);
}
