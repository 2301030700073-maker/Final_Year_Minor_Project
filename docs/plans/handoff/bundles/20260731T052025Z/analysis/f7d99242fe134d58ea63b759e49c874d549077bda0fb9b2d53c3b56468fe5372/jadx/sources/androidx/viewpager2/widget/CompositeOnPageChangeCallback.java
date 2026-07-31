package androidx.viewpager2.widget;

import androidx.viewpager2.widget.ViewPager2;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CompositeOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {
    public final /* synthetic */ int $r8$classId;
    public final Object mCallbacks;

    public CompositeOnPageChangeCallback() {
        this.$r8$classId = 0;
        this.mCallbacks = new ArrayList(3);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrollStateChanged(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.mCallbacks;
        switch (i2) {
            case 0:
                try {
                    Iterator it = ((ArrayList) obj).iterator();
                    while (it.hasNext()) {
                        ((ViewPager2.OnPageChangeCallback) it.next()).onPageScrollStateChanged(i);
                    }
                    return;
                } catch (ConcurrentModificationException e) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Adding and removing callbacks during dispatch to callbacks is not supported", e);
                    return;
                }
            case 1:
                ((CommonStatePrettyPrinter) obj).updateFragmentMaxLifecycle(false);
                return;
            default:
                if (i == 0) {
                    MessageViewContainerFragment messageViewContainerFragment = (MessageViewContainerFragment) obj;
                    ViewPager2 viewPager2 = messageViewContainerFragment.viewPager;
                    if (viewPager2 != null) {
                        messageViewContainerFragment.setActiveMessage(viewPager2.getCurrentItem());
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                        throw null;
                    }
                }
                return;
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i, float f, int i2) {
        switch (this.$r8$classId) {
            case 0:
                try {
                    Iterator it = ((ArrayList) this.mCallbacks).iterator();
                    while (it.hasNext()) {
                        ((ViewPager2.OnPageChangeCallback) it.next()).onPageScrolled(i, f, i2);
                    }
                    break;
                } catch (ConcurrentModificationException e) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Adding and removing callbacks during dispatch to callbacks is not supported", e);
                    return;
                }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.mCallbacks;
        switch (i2) {
            case 0:
                try {
                    Iterator it = ((ArrayList) obj).iterator();
                    while (it.hasNext()) {
                        ((ViewPager2.OnPageChangeCallback) it.next()).onPageSelected(i);
                    }
                    return;
                } catch (ConcurrentModificationException e) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Adding and removing callbacks during dispatch to callbacks is not supported", e);
                    return;
                }
            case 1:
                ((CommonStatePrettyPrinter) obj).updateFragmentMaxLifecycle(false);
                return;
            default:
                MessageViewContainerFragment messageViewContainerFragment = (MessageViewContainerFragment) obj;
                ViewPager2 viewPager2 = messageViewContainerFragment.viewPager;
                if (viewPager2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewPager");
                    throw null;
                }
                if (viewPager2.getScrollState() == 0) {
                    messageViewContainerFragment.setActiveMessage(i);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ CompositeOnPageChangeCallback(int i, Object obj) {
        this.$r8$classId = i;
        this.mCallbacks = obj;
    }
}
