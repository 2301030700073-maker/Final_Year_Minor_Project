package org.schabi.newpipe.databinding;

import android.os.Trace;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.PausedCompositionRemembers;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.viewbinding.ViewBinding;
import androidx.work.OperationKt;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ActivityErrorBinding implements ViewBinding {
    public Object errorCommentBox;
    public final Object errorInfoLabelsView;
    public Object errorInfosView;
    public Object errorMessageView;
    public Object errorReportCopyButton;
    public Object errorReportEmailButton;
    public Object errorReportGitHubButton;
    public final Object errorSorryView;
    public final Object errorView;
    public Object rootView;
    public Object toolbarLayout;

    public ActivityErrorBinding() {
        MutableVector mutableVector = new MutableVector(new GapRememberObserverHolder[16]);
        this.errorInfoLabelsView = mutableVector;
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.errorInfosView = new MutableScatterSet();
        this.errorMessageView = mutableVector;
        this.errorSorryView = new MutableVector(new Object[16]);
        this.errorView = new MutableVector(new Function0[16]);
    }

    public static final boolean forgetting$removeFrom(GapRememberObserverHolder gapRememberObserverHolder, MutableVector mutableVector) {
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            RememberObserver rememberObserver = ((GapRememberObserverHolder) objArr[i2]).wrapped;
            if (rememberObserver instanceof PausedCompositionRemembers) {
                MutableVector mutableVector2 = ((PausedCompositionRemembers) rememberObserver).pausedRemembers;
                if (mutableVector2.remove(gapRememberObserverHolder) || forgetting$removeFrom(gapRememberObserverHolder, mutableVector2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void clear() {
        this.rootView = null;
        this.errorCommentBox = null;
        MutableVector mutableVector = (MutableVector) this.errorInfoLabelsView;
        mutableVector.clear();
        ((MutableScatterSet) this.errorInfosView).clear();
        this.errorMessageView = mutableVector;
        ((MutableVector) this.errorSorryView).clear();
        ((MutableVector) this.errorView).clear();
        this.errorReportCopyButton = null;
        this.errorReportEmailButton = null;
        this.errorReportGitHubButton = null;
    }

    public void dispatchAbandons() {
        Set set = (Set) this.rootView;
        if (set == null || set.isEmpty()) {
            return;
        }
        Trace.beginSection("Compose:abandons");
        try {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                RememberObserver rememberObserver = (RememberObserver) it.next();
                it.remove();
                rememberObserver.onAbandoned();
            }
        } finally {
            Trace.endSection();
        }
    }

    public void dispatchRememberObservers() {
        MutableVector mutableVector = (MutableVector) this.errorInfoLabelsView;
        MutableVector mutableVector2 = (MutableVector) this.errorSorryView;
        Set set = (Set) this.rootView;
        if (set == null) {
            return;
        }
        this.toolbarLayout = null;
        int i = 11;
        if (mutableVector2.size != 0) {
            Trace.beginSection("Compose:onForgotten");
            try {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.errorReportCopyButton;
                int i2 = mutableVector2.size;
                while (true) {
                    i2--;
                    if (-1 >= i2) {
                        break;
                    }
                    Object obj = mutableVector2.content[i2];
                    try {
                        if (obj instanceof GapRememberObserverHolder) {
                            RememberObserver rememberObserver = ((GapRememberObserverHolder) obj).wrapped;
                            set.remove(rememberObserver);
                            rememberObserver.onForgotten();
                        }
                        if (obj instanceof ComposeNodeLifecycleCallback) {
                            if (mutableScatterSet == null || !mutableScatterSet.contains(obj)) {
                                ((ComposeNodeLifecycleCallback) obj).onDeactivate();
                            } else {
                                ((ComposeNodeLifecycleCallback) obj).onRelease();
                            }
                        }
                    } catch (Throwable th) {
                        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.errorCommentBox;
                        if (compositionErrorContextImpl != null) {
                            OperationKt.tryAttachComposeStackTrace(th, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(compositionErrorContextImpl, obj, i));
                        }
                        throw th;
                    }
                }
            } finally {
                Trace.endSection();
            }
        }
        if (mutableVector.size != 0) {
            Trace.beginSection("Compose:onRemembered");
            try {
                Set set2 = (Set) this.rootView;
                if (set2 != null) {
                    Object[] objArr = mutableVector.content;
                    int i3 = mutableVector.size;
                    for (int i4 = 0; i4 < i3; i4++) {
                        GapRememberObserverHolder gapRememberObserverHolder = (GapRememberObserverHolder) objArr[i4];
                        RememberObserver rememberObserver2 = gapRememberObserverHolder.wrapped;
                        set2.remove(rememberObserver2);
                        try {
                            rememberObserver2.onRemembered();
                        } catch (Throwable th2) {
                            CompositionErrorContextImpl compositionErrorContextImpl2 = (CompositionErrorContextImpl) this.errorCommentBox;
                            if (compositionErrorContextImpl2 != null) {
                                OperationKt.tryAttachComposeStackTrace(th2, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(compositionErrorContextImpl2, gapRememberObserverHolder, i));
                            }
                            throw th2;
                        }
                    }
                }
            } finally {
            }
        }
    }

    public void dispatchSideEffects() {
        MutableVector mutableVector = (MutableVector) this.errorView;
        if (mutableVector.size != 0) {
            Trace.beginSection("Compose:sideeffects");
            try {
                Object[] objArr = mutableVector.content;
                int i = mutableVector.size;
                for (int i2 = 0; i2 < i; i2++) {
                    ((Function0) objArr[i2]).invoke();
                }
                mutableVector.clear();
            } finally {
                Trace.endSection();
            }
        }
    }

    public void forgetting(GapRememberObserverHolder gapRememberObserverHolder) {
        MutableVector mutableVector = (MutableVector) this.errorInfoLabelsView;
        if (!((MutableScatterSet) this.errorInfosView).contains(gapRememberObserverHolder)) {
            ScatterSet scatterSet = (ScatterSet) this.toolbarLayout;
            if (scatterSet == null || !scatterSet.contains(gapRememberObserverHolder)) {
                ((MutableVector) this.errorSorryView).add(gapRememberObserverHolder);
                return;
            }
            return;
        }
        ((MutableScatterSet) this.errorInfosView).remove(gapRememberObserverHolder);
        if (!((MutableVector) this.errorMessageView).remove(gapRememberObserverHolder) && !mutableVector.remove(gapRememberObserverHolder)) {
            forgetting$removeFrom(gapRememberObserverHolder, mutableVector);
        }
        Set set = (Set) this.rootView;
        if (set == null) {
            return;
        }
        set.add(gapRememberObserverHolder.wrapped);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return (FrameLayout) this.rootView;
    }

    public void prepare(Set set, CompositionErrorContextImpl compositionErrorContextImpl) {
        clear();
        this.rootView = set;
        this.errorCommentBox = compositionErrorContextImpl;
    }

    public ActivityErrorBinding(FrameLayout frameLayout, NewPipeEditText newPipeEditText, NewPipeTextView newPipeTextView, NewPipeTextView newPipeTextView2, NewPipeTextView newPipeTextView3, Button button, Button button2, Button button3, NewPipeTextView newPipeTextView4, NewPipeTextView newPipeTextView5, Printer printer) {
        this.rootView = frameLayout;
        this.errorCommentBox = newPipeEditText;
        this.errorInfoLabelsView = newPipeTextView;
        this.errorInfosView = newPipeTextView2;
        this.errorMessageView = newPipeTextView3;
        this.errorReportCopyButton = button;
        this.errorReportEmailButton = button2;
        this.errorReportGitHubButton = button3;
        this.errorSorryView = newPipeTextView4;
        this.errorView = newPipeTextView5;
        this.toolbarLayout = printer;
    }
}
