package net.thunderbird.core.common.state.debug;

import android.view.ViewParent;
import androidx.camera.core.impl.Config;
import androidx.collection.LongSparseArray;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.fsck.k9.ui.messageview.MessageViewContainerFragment;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CommonStatePrettyPrinter {
    public Object clock;
    public Object formatter;
    public long fullDumpCooldown;
    public Object lastFullDumpTimestamp;
    public Object logTag;
    public Object logger;

    public static ViewPager2 inferViewPager(RecyclerView recyclerView) {
        ViewParent parent = recyclerView.getParent();
        if (parent instanceof ViewPager2) {
            return (ViewPager2) parent;
        }
        Regex$$ExternalSyntheticBUOutline0.m$1(parent, "Expected ViewPager2 instance. Got: ");
        return null;
    }

    public void updateFragmentMaxLifecycle(boolean z) {
        int currentItem;
        Fragment fragment;
        MessageViewContainerFragment.MessageViewContainerAdapter messageViewContainerAdapter = (MessageViewContainerFragment.MessageViewContainerAdapter) this.lastFullDumpTimestamp;
        Fragment.AnonymousClass7 anonymousClass7 = messageViewContainerAdapter.mFragmentEventDispatcher;
        LongSparseArray longSparseArray = messageViewContainerAdapter.mFragments;
        FragmentManager fragmentManager = messageViewContainerAdapter.mFragmentManager;
        if (fragmentManager.isStateSaved() || ((ViewPager2) this.formatter).getScrollState() != 0 || longSparseArray.isEmpty() || messageViewContainerAdapter.messageList.size() == 0 || (currentItem = ((ViewPager2) this.formatter).getCurrentItem()) >= messageViewContainerAdapter.messageList.size()) {
            return;
        }
        long itemId = messageViewContainerAdapter.getItemId(currentItem);
        if ((itemId != this.fullDumpCooldown || z) && (fragment = (Fragment) longSparseArray.get(itemId)) != null && fragment.isAdded()) {
            this.fullDumpCooldown = itemId;
            fragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
            ArrayList arrayList = new ArrayList();
            Fragment fragment2 = null;
            for (int i = 0; i < longSparseArray.size(); i++) {
                long keyAt = longSparseArray.keyAt(i);
                Fragment fragment3 = (Fragment) longSparseArray.valueAt(i);
                if (fragment3.isAdded()) {
                    if (keyAt != this.fullDumpCooldown) {
                        backStackRecord.setMaxLifecycle(fragment3, Lifecycle.State.STARTED);
                        anonymousClass7.getClass();
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = ((CopyOnWriteArrayList) anonymousClass7.this$0).iterator();
                        if (it.hasNext()) {
                            throw Config.CC.m(it);
                        }
                        arrayList.add(arrayList2);
                    } else {
                        fragment2 = fragment3;
                    }
                    fragment3.setMenuVisibility(keyAt == this.fullDumpCooldown);
                }
            }
            if (fragment2 != null) {
                backStackRecord.setMaxLifecycle(fragment2, Lifecycle.State.RESUMED);
                anonymousClass7.getClass();
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = ((CopyOnWriteArrayList) anonymousClass7.this$0).iterator();
                if (it2.hasNext()) {
                    throw Config.CC.m(it2);
                }
                arrayList.add(arrayList3);
            }
            if (backStackRecord.mOps.isEmpty()) {
                return;
            }
            backStackRecord.commitNow();
            Collections.reverse(arrayList);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                List list = (List) it3.next();
                anonymousClass7.getClass();
                Fragment.AnonymousClass7.dispatchPostEvents(list);
            }
        }
    }
}
