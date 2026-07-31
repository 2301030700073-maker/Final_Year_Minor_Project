package org.wikipedia.page;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageActivity$$ExternalSyntheticLambda8 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageActivity f$0;

    public /* synthetic */ PageActivity$$ExternalSyntheticLambda8(PageActivity pageActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = pageActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        PageActivity pageActivity = this.f$0;
        switch (i) {
            case 0:
                return Boolean.valueOf(pageActivity.isTooltipShowing);
            default:
                int i2 = PageActivity.$r8$clinit;
                Prefs prefs = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_customize_toolbar_tooltip, false);
                pageActivity.isTooltipShowing = false;
                return Unit.INSTANCE;
        }
    }
}
