package androidx.room;

import android.graphics.Rect;
import android.view.View;
import androidx.emoji2.text.DefaultGlyphChecker;
import androidx.emoji2.text.EmojiCompat;
import androidx.recyclerview.widget.OrientationHelper$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLiteConnection;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class RoomOpenDelegate {
    public final Object identityHash;
    public final Object legacyIdentityHash;
    public int version;

    public RoomOpenDelegate(RecyclerView.LayoutManager layoutManager) {
        this.version = Integer.MIN_VALUE;
        this.legacyIdentityHash = new Rect();
        this.identityHash = layoutManager;
    }

    public static RoomOpenDelegate createOrientationHelper(RecyclerView.LayoutManager layoutManager, int i) {
        if (i == 0) {
            return new OrientationHelper$1(layoutManager, 0);
        }
        int i2 = 1;
        if (i == 1) {
            return new OrientationHelper$1(layoutManager, i2);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("invalid orientation");
        return null;
    }

    public abstract void createAllTables(SQLiteConnection sQLiteConnection);

    public abstract void dropAllTables(SQLiteConnection sQLiteConnection);

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.version) {
            return 0;
        }
        return getTotalSpace() - this.version;
    }

    public abstract int getTransformedEndWithDecoration(View view);

    public abstract int getTransformedStartWithDecoration(View view);

    public abstract void offsetChildren(int i);

    public abstract void onCreate(SQLiteConnection sQLiteConnection);

    public abstract void onOpen(SQLiteConnection sQLiteConnection);

    public abstract void onPostMigrate(SQLiteConnection sQLiteConnection);

    public abstract void onPreMigrate(SQLiteConnection sQLiteConnection);

    public abstract LocalFolder.AnonymousClass8 onValidateSchema(SQLiteConnection sQLiteConnection);

    public RoomOpenDelegate(int i, String str, String str2) {
        this.version = i;
        this.identityHash = str;
        this.legacyIdentityHash = str2;
    }

    public RoomOpenDelegate(EmojiCompat.MetadataRepoLoader metadataRepoLoader) {
        this.version = 0;
        this.legacyIdentityHash = new DefaultGlyphChecker();
        this.identityHash = metadataRepoLoader;
    }
}
