package androidx.core.view.insets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {
    public static final Object PROTECTION_VIEW = new Object();
    public ProtectionGroup mGroup;
    public final ArrayList mProtections;

    public ProtectionLayout(Context context, List list) {
        super(context);
        this.mProtections = new ArrayList();
        setProtections(list);
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
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unexpected side: ", 0));
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
                systemBarStateMonitor.mDetector.post(new Preview$$ExternalSyntheticLambda0(27, systemBarStateMonitor));
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

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mProtections = new ArrayList();
    }

    public ProtectionLayout(Context context) {
        super(context);
        this.mProtections = new ArrayList();
    }
}
