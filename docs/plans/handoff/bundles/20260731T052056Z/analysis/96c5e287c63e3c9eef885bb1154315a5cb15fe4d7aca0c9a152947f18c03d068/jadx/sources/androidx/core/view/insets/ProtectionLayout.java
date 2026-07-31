package androidx.core.view.insets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.animation.core.Animation;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {
    public static final Object PROTECTION_VIEW = new Object();
    public ProtectionGroup mGroup;
    public final ArrayList mProtections;

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        this.mProtections = new ArrayList();
    }

    private SystemBarStateMonitor getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.tag_system_bar_state_monitor);
        if (tag instanceof SystemBarStateMonitor) {
            return (SystemBarStateMonitor) tag;
        }
        SystemBarStateMonitor systemBarStateMonitor = new SystemBarStateMonitor(viewGroup);
        viewGroup.setTag(R.id.tag_system_bar_state_monitor, systemBarStateMonitor);
        return systemBarStateMonitor;
    }

    public final void addProtectionViews() {
        ArrayList arrayList = this.mProtections;
        if (arrayList.isEmpty()) {
            removeProtectionViews();
            return;
        }
        SystemBarStateMonitor orInstallSystemBarStateMonitor = getOrInstallSystemBarStateMonitor();
        removeProtectionViews();
        this.mGroup = new ProtectionGroup(orInstallSystemBarStateMonitor, arrayList);
        getChildCount();
        if (this.mGroup.mProtections.size() <= 0) {
            return;
        }
        ColorProtection colorProtection = (ColorProtection) this.mGroup.mProtections.get(0);
        getContext();
        colorProtection.getClass();
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(0, "Unexpected side: "));
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view != null && view.getTag() != PROTECTION_VIEW) {
            ProtectionGroup protectionGroup = this.mGroup;
            int childCount = getChildCount() - (protectionGroup != null ? protectionGroup.mProtections.size() : 0);
            if (i > childCount || i < 0) {
                i = childCount;
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        addProtectionViews();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeProtectionViews();
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.tag_system_bar_state_monitor);
        if (tag instanceof SystemBarStateMonitor) {
            SystemBarStateMonitor systemBarStateMonitor = (SystemBarStateMonitor) tag;
            if (systemBarStateMonitor.mCallbacks.isEmpty()) {
                systemBarStateMonitor.mDetector.post(new Task$$ExternalSyntheticLambda0(10, systemBarStateMonitor));
                viewGroup.setTag(R.id.tag_system_bar_state_monitor, null);
            }
        }
    }

    public final void removeProtectionViews() {
        if (this.mGroup != null) {
            removeViews(getChildCount() - this.mGroup.mProtections.size(), this.mGroup.mProtections.size());
            int size = this.mGroup.mProtections.size();
            ProtectionGroup protectionGroup = this.mGroup;
            if (size > 0) {
                ((ColorProtection) protectionGroup.mProtections.get(0)).getClass();
                throw null;
            }
            ArrayList arrayList = protectionGroup.mProtections;
            if (!protectionGroup.mDisposed) {
                protectionGroup.mDisposed = true;
                protectionGroup.mMonitor.mCallbacks.remove(protectionGroup);
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    ((ColorProtection) arrayList.get(size2)).mController = null;
                }
                arrayList.clear();
            }
            this.mGroup = null;
        }
    }

    public void setProtections(List<ColorProtection> list) {
        ArrayList arrayList = this.mProtections;
        arrayList.clear();
        arrayList.addAll(list);
        if (isAttachedToWindow()) {
            addProtectionViews();
            requestApplyInsets();
        }
    }
}
