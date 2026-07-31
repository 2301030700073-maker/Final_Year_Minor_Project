package org.schabi.newpipe.local;

import android.database.Cursor;
import android.os.Build;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView$$ExternalSyntheticLambda2;
import androidx.compose.ui.platform.TestTagKt;
import io.noties.markwon.BlockHandlerDef;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.database.AppDatabase;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseLocalListFragment$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BaseLocalListFragment$$ExternalSyntheticLambda0(BaseLocalListFragment baseLocalListFragment) {
        this.$r8$classId = 0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                return;
            case 1:
                MutableObjectList mutableObjectList = AndroidComposeView.composeViews;
                synchronized (mutableObjectList) {
                    try {
                        int i2 = Build.VERSION.SDK_INT;
                        Object[] objArr = mutableObjectList.content;
                        int i3 = mutableObjectList._size;
                        if (i2 < 30) {
                            while (i < i3) {
                                AndroidComposeView androidComposeView = (AndroidComposeView) objArr[i];
                                boolean showLayoutBounds = androidComposeView.getShowLayoutBounds();
                                Class cls = AndroidComposeView.systemPropertiesClass;
                                androidComposeView.setShowLayoutBounds(TestTagKt.getIsShowingLayoutBounds());
                                if (showLayoutBounds != androidComposeView.getShowLayoutBounds()) {
                                    androidComposeView.post(new AndroidComposeView$$ExternalSyntheticLambda2(androidComposeView, 2));
                                }
                                i++;
                            }
                        } else {
                            while (i < i3) {
                                AndroidComposeView androidComposeView2 = (AndroidComposeView) objArr[i];
                                androidComposeView2.post(new AndroidComposeView$$ExternalSyntheticLambda2(androidComposeView2, 3));
                                i++;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                if (AppKt.databaseInstance == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("database is not initialized");
                    return;
                }
                AppDatabase appDatabase = AppKt.databaseInstance;
                appDatabase.getClass();
                appDatabase.assertNotMainThread();
                appDatabase.assertNotSuspendingTransaction();
                Cursor query = appDatabase.getOpenHelper().getWritableDatabase().query(new BlockHandlerDef(21));
                if (query.moveToFirst() && query.getInt(0) == 1) {
                    Node$$ExternalSyntheticBUOutline0.m811m("Checkpoint was blocked from completing");
                    return;
                }
                return;
        }
    }

    public /* synthetic */ BaseLocalListFragment$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    private final void run$org$schabi$newpipe$local$BaseLocalListFragment$$ExternalSyntheticLambda0() {
    }
}
