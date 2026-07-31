package us.shandian.giga.ui.common;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import androidx.work.OperationKt;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.SnackbarContentLayout;
import j$.util.Collection;
import j$.util.Optional;
import java.util.ArrayList;
import kotlin.Pair;
import org.mozilla.javascript.ES6Iterator;
import org.schabi.newpipe.R;
import us.shandian.giga.get.FinishedMission;
import us.shandian.giga.get.Mission;
import us.shandian.giga.service.DownloadManager;
import us.shandian.giga.ui.adapter.MissionAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class Deleter {
    public final MissionAdapter mAdapter;
    public final Context mContext;
    public final DownloadManager mDownloadManager;
    public final Handler mHandler;
    public final DownloadManager.MissionIterator mIterator;
    public final View mView;
    public Snackbar snackbar;
    public boolean running = true;
    public ArrayList items = new ArrayList(2);

    public static void $r8$lambda$fRH27PItlkc7g0X38LEPA6BZ9V8(Deleter deleter) {
        if (deleter.items.size() < 1) {
            return;
        }
        int i = 0;
        Optional findFirst = Collection.EL.stream(deleter.items).filter(new Deleter$$ExternalSyntheticLambda2(i)).map(new Deleter$$ExternalSyntheticLambda3(i)).findFirst();
        boolean isPresent = findFirst.isPresent();
        Context context = deleter.mContext;
        Snackbar make = Snackbar.make(deleter.mView, isPresent ? context.getString(R.string.file_deleted).concat(":\n").concat((String) findFirst.get()) : context.getString(R.string.entry_deleted), -2);
        deleter.snackbar = make;
        make.setAction(make.context.getText(R.string.undo), new Deleter$$ExternalSyntheticLambda4(deleter, i));
        ((SnackbarContentLayout) deleter.snackbar.view.getChildAt(0)).getActionView().setTextColor(-256);
        deleter.snackbar.show();
        OperationKt.postDelayed(deleter.mHandler, new Deleter$$ExternalSyntheticLambda0(deleter, 2), "commit", 5000L);
    }

    public Deleter(View view, Context context, MissionAdapter missionAdapter, DownloadManager downloadManager, DownloadManager.MissionIterator missionIterator, Handler handler) {
        this.mView = view;
        this.mContext = context;
        this.mAdapter = missionAdapter;
        this.mDownloadManager = downloadManager;
        this.mIterator = missionIterator;
        this.mHandler = handler;
    }

    public final void append(Mission mission, boolean z) {
        this.mHandler.removeCallbacksAndMessages("commit");
        commit();
        this.mIterator.hidden.add(mission);
        this.items.add(0, new Pair(mission, Boolean.valueOf(z)));
        show();
    }

    public final void commit() {
        if (this.items.size() < 1) {
            return;
        }
        if (this.items.size() > 0) {
            Pair pair = (Pair) this.items.remove(0);
            Mission mission = (Mission) pair.getFirst();
            boolean booleanValue = ((Boolean) pair.getSecond()).booleanValue();
            mission.getClass();
            this.mIterator.hidden.remove(mission);
            this.mDownloadManager.deleteMission(mission, booleanValue);
            if (mission instanceof FinishedMission) {
                this.mContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", mission.storage.getUri()));
            }
        }
        if (this.items.size() < 1) {
            pause();
        } else {
            show();
        }
    }

    public final void pause() {
        this.running = false;
        Handler handler = this.mHandler;
        handler.removeCallbacksAndMessages(ES6Iterator.NEXT_METHOD);
        handler.removeCallbacksAndMessages("show");
        handler.removeCallbacksAndMessages("commit");
        Snackbar snackbar = this.snackbar;
        if (snackbar != null) {
            snackbar.dispatchDismiss(3);
        }
    }

    public final void show() {
        int i = 1;
        if (this.items.size() < 1) {
            return;
        }
        pause();
        this.running = true;
        OperationKt.postDelayed(this.mHandler, new Deleter$$ExternalSyntheticLambda0(this, i), ES6Iterator.NEXT_METHOD, 350L);
    }
}
