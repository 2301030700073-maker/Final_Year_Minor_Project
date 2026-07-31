package com.fsck.k9.ui.messagelist.item;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import app.k9mail.provider.K9FeatureThemeProvider;
import coil3.size.ViewSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BannerInlineListInAppNotificationViewHolder f$0;

    public /* synthetic */ MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0(BannerInlineListInAppNotificationViewHolder bannerInlineListInAppNotificationViewHolder, int i) {
        this.$r8$classId = 1;
        this.f$0 = bannerInlineListInAppNotificationViewHolder;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 2;
        byte b = 0;
        BannerInlineListInAppNotificationViewHolder bannerInlineListInAppNotificationViewHolder = this.f$0;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                    boolean changed = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = ViewSizeResolver.CC.m(FeatureThemeProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                    }
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) rememberedValue)).WithTheme(Expect_jvmKt.rememberComposableLambda(1895798093, new MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0(bannerInlineListInAppNotificationViewHolder, i2, b), gapComposer), gapComposer, 6);
                    break;
                }
                break;
            case 1:
                num.getClass();
                bannerInlineListInAppNotificationViewHolder.Content(composer, Updater.updateChangedFlags(1));
                break;
            default:
                int intValue2 = num.intValue();
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    bannerInlineListInAppNotificationViewHolder.Content(gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0(BannerInlineListInAppNotificationViewHolder bannerInlineListInAppNotificationViewHolder, int i, byte b) {
        this.$r8$classId = i;
        this.f$0 = bannerInlineListInAppNotificationViewHolder;
    }
}
