package c.b.a.b.b.n;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import b.l.W;
import com.android.launcher3.allapps.search.AllAppsSearchBarController;
import com.android.launcher3.allapps.search.SearchAlgorithm;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;

/* loaded from: classes.dex */
public class n implements SearchAlgorithm, Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2772a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2773b = new Handler(this);

    /* renamed from: c, reason: collision with root package name */
    public final Handler f2774c = new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), this);

    public n(Context context) {
        this.f2772a = context;
    }

    @Override // com.android.launcher3.allapps.search.SearchAlgorithm
    public void cancel(boolean z) {
        this.f2774c.removeMessages(100);
        if (z) {
            this.f2773b.removeMessages(200);
        }
    }

    @Override // com.android.launcher3.allapps.search.SearchAlgorithm
    public void doSearch(String str, AllAppsSearchBarController.Callbacks callbacks) {
        this.f2774c.removeMessages(100);
        Message.obtain(this.f2774c, 100, new m(str, callbacks)).sendToTarget();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 100) {
            if (i != 200) {
                return false;
            }
            m mVar = (m) message.obj;
            mVar.f2771c.onSearchResult(mVar.f2770b, mVar.f2769a);
            return true;
        }
        m mVar2 = (m) message.obj;
        Cursor query = this.f2772a.getContentResolver().query(new Uri.Builder().scheme("content").authority("com.google.android.apps.nexuslauncher.appssearch").appendPath(mVar2.f2770b).build(), null, null, null, null);
        try {
            int columnIndex = query.getColumnIndex("suggest_intent_data");
            while (query.moveToNext()) {
                ComponentKey d2 = W.d(Uri.parse(query.getString(columnIndex)));
                if (d2 != null) {
                    mVar2.f2769a.add(d2);
                }
            }
            query.close();
            Message.obtain(this.f2773b, 200, mVar2).sendToTarget();
            return true;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
