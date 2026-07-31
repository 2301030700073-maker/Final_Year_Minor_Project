package org.wikipedia.feed;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.compose.components.NotificationBellState;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.language.AppLanguageState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ WikiSite f$3;
    public final /* synthetic */ Function1 f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Object f$8;
    public final /* synthetic */ Object f$9;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda2(int i, Function1 function1, NotificationBellState notificationBellState, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, WikiSite wikiSite, CommunityContentState communityContentState, ForYouContentState forYouContentState, HomeTab homeTab, TabsState tabsState, AppLanguageState appLanguageState) {
        this.$r8$classId = 0;
        this.f$0 = homeTab;
        this.f$1 = forYouContentState;
        this.f$2 = i;
        this.f$3 = wikiSite;
        this.f$4 = function1;
        this.f$5 = tabsState;
        this.f$6 = notificationBellState;
        this.f$7 = appLanguageState;
        this.f$8 = communityContentState;
        this.f$9 = pageOverflowMenuState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x05cb, code lost:
    
        if (r8 == r1) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x073d, code lost:
    
        if (r2 == r1) goto L183;
     */
    @Override // kotlin.jvm.functions.Function3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r47, java.lang.Object r48, java.lang.Object r49) {
        /*
            Method dump skipped, instructions count: 2274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda2.invoke(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda2(ForYouModule.BasedOnInterest basedOnInterest, Context context, WikiSite wikiSite, int i, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1) {
        this.$r8$classId = 3;
        this.f$0 = basedOnInterest;
        this.f$1 = context;
        this.f$3 = wikiSite;
        this.f$2 = i;
        this.f$5 = function2;
        this.f$6 = function22;
        this.f$7 = function23;
        this.f$8 = function24;
        this.f$9 = function0;
        this.f$4 = function1;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda2(ForYouModule forYouModule, WikiSite wikiSite, int i, Context context, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1, int i2) {
        this.$r8$classId = i2;
        this.f$0 = forYouModule;
        this.f$3 = wikiSite;
        this.f$2 = i;
        this.f$1 = context;
        this.f$5 = function2;
        this.f$6 = function22;
        this.f$7 = function23;
        this.f$8 = function24;
        this.f$9 = function0;
        this.f$4 = function1;
    }
}
