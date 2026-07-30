package c.b.a.b.b.l.Y;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.popup.SystemShortcut;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.qsb.longpopup.SearchOptionsPopup;
import com.google.android.apps.nexuslauncher.qsb.longpopup.SearchWidgetPopup;

/* loaded from: classes.dex */
public class k extends SystemShortcut.Widgets {

    /* renamed from: a, reason: collision with root package name */
    public final SearchOptionsPopup f2664a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public k(com.google.android.apps.nexuslauncher.qsb.longpopup.SearchOptionsPopup r2, com.android.launcher3.model.data.ItemInfo r3) {
        /*
            r1 = this;
            com.android.launcher3.BaseDraggingActivity r0 = com.google.android.apps.nexuslauncher.qsb.longpopup.SearchOptionsPopup.e(r2)
            com.android.launcher3.Launcher r0 = (com.android.launcher3.Launcher) r0
            r1.<init>(r0, r3)
            r1.f2664a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.l.Y.k.<init>(com.google.android.apps.nexuslauncher.qsb.longpopup.SearchOptionsPopup, com.android.launcher3.model.data.ItemInfo):void");
    }

    @Override // com.android.launcher3.popup.SystemShortcut.Widgets, android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractFloatingView.closeAllOpenViews(this.mTarget);
        i iVar = this.f2664a.f3313b;
        SearchWidgetPopup searchWidgetPopup = (SearchWidgetPopup) LayoutInflater.from(iVar.getContext()).inflate(R.layout.search_widgets_popup, (ViewGroup) iVar, false);
        searchWidgetPopup.f3316a = iVar;
        searchWidgetPopup.f3317b = this.f2664a.f3315d;
        searchWidgetPopup.populateAndShow(this.mItemInfo);
        this.f2664a.animateClose();
        ((Launcher) this.mTarget).getUserEventDispatcher().logActionOnControl(0, 2, view, new int[0]);
    }
}
