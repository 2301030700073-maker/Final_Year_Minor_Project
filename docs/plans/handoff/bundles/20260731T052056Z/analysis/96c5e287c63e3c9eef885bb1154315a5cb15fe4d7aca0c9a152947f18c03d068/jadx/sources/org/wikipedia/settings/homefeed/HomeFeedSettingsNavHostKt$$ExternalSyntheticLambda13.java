package org.wikipedia.settings.homefeed;

import androidx.navigation.NavHostController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavHostController f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13(NavHostController navHostController, Function0 function0, int i) {
        this.$r8$classId = i;
        this.f$0 = navHostController;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$1;
        NavHostController navHostController = this.f$0;
        switch (i) {
            case 0:
                if (!navHostController.navigateUp()) {
                    function0.invoke();
                    break;
                }
                break;
            case 1:
                if (!navHostController.navigateUp()) {
                    function0.invoke();
                    break;
                }
                break;
            case 2:
                if (!navHostController.navigateUp()) {
                    function0.invoke();
                    break;
                }
                break;
            default:
                if (!navHostController.navigateUp()) {
                    function0.invoke();
                    break;
                }
                break;
        }
        return unit;
    }
}
