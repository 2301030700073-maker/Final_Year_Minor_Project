package c.a.a.D0;

import com.android.launcher3.allapps.AllAppsTransitionController;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AllAppsTransitionController f1262a;

    public /* synthetic */ m(AllAppsTransitionController allAppsTransitionController) {
        this.f1262a = allAppsTransitionController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1262a.onProgressAnimationEnd();
    }
}
