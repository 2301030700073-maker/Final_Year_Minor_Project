package c.b.a.b.b.m;

import c.b.a.b.a.a.a.a.c.E;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.quickstep.ProactiveSuggestionWrapper;
import com.google.android.apps.nexuslauncher.quickstep.TaskOverlayFactoryImpl;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f2719a;

    public /* synthetic */ j(t tVar) {
        this.f2719a = tVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        t tVar = this.f2719a;
        E e = (E) obj;
        tVar.f = null;
        TaskOverlayFactoryImpl.a("Showing proactive suggestions");
        if (tVar.t) {
            TaskView taskView = tVar.mThumbnailView.getTaskView();
            ProactiveSuggestionWrapper proactiveSuggestionWrapper = (ProactiveSuggestionWrapper) tVar.f2733c.getView(R.layout.suggestion_wrapper, taskView.getContext(), taskView);
            proactiveSuggestionWrapper.f3319a = R.layout.suggestion_wrapper;
            proactiveSuggestionWrapper.addView(e);
            taskView.setContextualChip(proactiveSuggestionWrapper);
        }
    }
}
