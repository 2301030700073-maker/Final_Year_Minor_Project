package androidx.work.impl;

import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.work.Configuration;
import androidx.work.impl.model.WorkGenerationalId;
import com.google.gson.GsonBuilder;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Schedulers$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ Schedulers$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$3;
        Object obj2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                List list = (List) obj4;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj3;
                Configuration configuration = (Configuration) obj2;
                WorkDatabase workDatabase = (WorkDatabase) obj;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((Scheduler) it.next()).cancel(workGenerationalId.workSpecId);
                }
                Schedulers.schedule(configuration, workDatabase, list);
                return;
            default:
                PageActivity pageActivity = (PageActivity) obj4;
                PageActivity.TabPosition tabPosition = (PageActivity.TabPosition) obj3;
                PageTitle pageTitle = (PageTitle) obj2;
                HistoryEntry historyEntry = (HistoryEntry) obj;
                PageFragment pageFragment = pageActivity.pageFragment;
                if (pageFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                    throw null;
                }
                if (pageFragment.isAdded()) {
                    FragmentManagerImpl supportFragmentManager = pageActivity.getSupportFragmentManager();
                    DialogFragment dialogFragment = (supportFragmentManager.isStateSaved() || supportFragmentManager.mDestroyed) ? null : (DialogFragment) supportFragmentManager.findFragmentByTag("bottom_sheet_fragment");
                    if (dialogFragment != null) {
                        dialogFragment.dismiss();
                    }
                    pageActivity.onPageCloseActionMode();
                    int i2 = PageActivity.WhenMappings.$EnumSwitchMapping$0[tabPosition.ordinal()];
                    if (i2 == 1) {
                        PageFragment pageFragment2 = pageActivity.pageFragment;
                        if (pageFragment2 != null) {
                            pageFragment2.loadPage(pageTitle, historyEntry, true, false, false);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                    }
                    PageFragment pageFragment3 = pageActivity.pageFragment;
                    if (i2 == 2) {
                        if (pageFragment3 != null) {
                            pageFragment3.loadPage(pageTitle, historyEntry, true, true, false);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                    }
                    if (i2 == 3) {
                        if (pageFragment3 != null) {
                            pageFragment3.openInNewBackgroundTab(pageTitle, historyEntry);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                    }
                    if (i2 != 4) {
                        if (pageFragment3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                        pageTitle.getClass();
                        historyEntry.getClass();
                        int selectedTabPosition = pageFragment3.selectedTabPosition(pageTitle);
                        if (selectedTabPosition == -1) {
                            pageFragment3.loadPage(pageTitle, historyEntry, true, false, false);
                            return;
                        } else {
                            pageFragment3.setCurrentTabAndReset(selectedTabPosition);
                            return;
                        }
                    }
                    if (pageFragment3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                        throw null;
                    }
                    pageTitle.getClass();
                    historyEntry.getClass();
                    pageFragment3.openInNewTab(pageTitle, historyEntry, pageFragment3.app.tabList.size());
                    GsonBuilder gsonBuilder = pageFragment3.pageFragmentLoadState;
                    if (gsonBuilder != null) {
                        gsonBuilder.loadFromBackStack();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                        throw null;
                    }
                }
                return;
        }
    }
}
