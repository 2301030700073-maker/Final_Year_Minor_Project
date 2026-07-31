package org.wikipedia.games;

import android.content.Intent;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda3(EditSectionActivity editSectionActivity, boolean z, HistoryEntry historyEntry, PageTitle pageTitle) {
        this.f$1 = editSectionActivity;
        this.f$0 = z;
        this.f$2 = historyEntry;
        this.f$3 = pageTitle;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Intent putExtra;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$3;
        Object obj2 = this.f$2;
        boolean z = this.f$0;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                Function1 function1 = (Function1) obj3;
                String str = (String) obj2;
                Function0 function0 = (Function0) obj;
                if (!z) {
                    function1.invoke(str);
                    break;
                } else {
                    function0.invoke();
                    break;
                }
            default:
                EditSectionActivity editSectionActivity = (EditSectionActivity) obj3;
                HistoryEntry historyEntry = (HistoryEntry) obj2;
                PageTitle pageTitle = (PageTitle) obj;
                int i2 = EditSectionActivity.$r8$clinit;
                if (z) {
                    historyEntry.getClass();
                    pageTitle.getClass();
                    putExtra = new Intent("org.wikipedia.load_in_new_tab").setClass(editSectionActivity, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", pageTitle);
                    putExtra.getClass();
                } else {
                    historyEntry.getClass();
                    pageTitle.getClass();
                    putExtra = new Intent("org.wikipedia.load_in_current_tab").setClass(editSectionActivity, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", pageTitle);
                    putExtra.getClass();
                }
                editSectionActivity.startActivity(putExtra);
                break;
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda3(boolean z, Function1 function1, String str, Function0 function0) {
        this.f$0 = z;
        this.f$1 = function1;
        this.f$2 = str;
        this.f$3 = function0;
    }
}
