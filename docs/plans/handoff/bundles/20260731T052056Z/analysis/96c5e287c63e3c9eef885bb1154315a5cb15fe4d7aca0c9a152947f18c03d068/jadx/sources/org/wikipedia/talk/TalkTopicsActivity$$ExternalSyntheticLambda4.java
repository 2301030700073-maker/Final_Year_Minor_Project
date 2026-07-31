package org.wikipedia.talk;

import android.content.Intent;
import android.os.Parcelable;
import androidx.compose.ui.unit.DpKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.activitytab.timeline.TimelinePagingSource;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkTopicsViewModel;
import org.wikipedia.usercontrib.UserContribListViewModel;
import org.wikipedia.widgets.SearchWidgetInstallDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkTopicsActivity$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ TalkTopicsActivity$$ExternalSyntheticLambda4(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                int i2 = TalkTopicsActivity.$r8$clinit;
                Intent intent = ((TalkTopicsActivity) obj).getIntent();
                intent.getClass();
                Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class);
                parcelable.getClass();
                return new TalkTopicsViewModel.Factory(0, (PageTitle) parcelable);
            case 1:
                return new TimelinePagingSource((UserContribListViewModel) obj, 4);
            default:
                SearchWidgetInstallDialog searchWidgetInstallDialog = (SearchWidgetInstallDialog) obj;
                SVGAndroidRenderer.submitInteraction$default(searchWidgetInstallDialog.instrument, "click", null, null, "install_close", null, null, 246);
                searchWidgetInstallDialog.dismiss();
                return Unit.INSTANCE;
        }
    }
}
