package org.wikipedia.suggestededits;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.skydoves.balloon.Balloon;
import com.skydoves.balloon.Balloon$relayShowAlignBottom$$inlined$relay$1;
import com.skydoves.balloon.Balloon$relayShowAlignTop$$inlined$relay$1;
import com.skydoves.balloon.BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio__OkioKt;
import org.maplibre.android.maps.MapChangeReceiver;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.GoneIfEmptyTextView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

    public /* synthetic */ SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12(SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = suggestedEditsImageRecsFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view;
        int i = this.$r8$classId;
        final SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
        switch (i) {
            case 0:
                if (suggestedEditsImageRecsFragment.isAdded()) {
                    MapChangeReceiver mapChangeReceiver = suggestedEditsImageRecsFragment._binding;
                    mapChangeReceiver.getClass();
                    Space space = (Space) mapChangeReceiver.onWillStartRenderingFrameList;
                    BottomSheetBehavior bottomSheetBehavior = suggestedEditsImageRecsFragment.bottomSheetBehavior;
                    if (bottomSheetBehavior != null) {
                        space.setLayoutParams(new LinearLayout.LayoutParams(-1, bottomSheetBehavior.peekHeightAuto ? -1 : bottomSheetBehavior.peekHeight));
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("bottomSheetBehavior");
                        throw null;
                    }
                }
                return;
            default:
                if (suggestedEditsImageRecsFragment.mState < 7 || !suggestedEditsImageRecsFragment.isAdded()) {
                    return;
                }
                Context requireContext = suggestedEditsImageRecsFragment.requireContext();
                String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_1);
                string.getClass();
                Balloon tooltip$default = ShareUtil.getTooltip$default(requireContext, string, true, 0, false, true, 1, 3, 56);
                final int i2 = 0;
                tooltip$default.onBalloonInitializedListener = new BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0(new Function1() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i3 = i2;
                        Unit unit = Unit.INSTANCE;
                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment2 = suggestedEditsImageRecsFragment;
                        View view2 = (View) obj;
                        switch (i3) {
                            case 0:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_2_dialog", actionStringForAnalytics$default, str);
                                break;
                            case 1:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str2 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion2.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_3_dialog", actionStringForAnalytics$default2, str2);
                                break;
                            default:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str3 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion3.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_4_dialog", actionStringForAnalytics$default3, str3);
                                break;
                        }
                        return unit;
                    }
                });
                tooltip$default.setOnBalloonDismissListener(new Function0() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i3 = i2;
                        Unit unit = Unit.INSTANCE;
                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment2 = suggestedEditsImageRecsFragment;
                        switch (i3) {
                            case 0:
                                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion.getClass();
                                ImageRecommendationsEvent.Companion.logAction("next", "onboarding_step_2_dialog", actionStringForAnalytics$default, str);
                                break;
                            case 1:
                                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str2 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion2.getClass();
                                ImageRecommendationsEvent.Companion.logAction("next", "onboarding_step_3_dialog", actionStringForAnalytics$default2, str2);
                                break;
                            default:
                                ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str3 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion3.getClass();
                                ImageRecommendationsEvent.Companion.logAction("get_started", "onboarding_step_4_dialog", actionStringForAnalytics$default3, str3);
                                Prefs prefs = Prefs.INSTANCE;
                                PrefsIoUtil.setBoolean(R.string.preference_key_se_image_recs_onboarding_shown, true);
                                break;
                        }
                        return unit;
                    }
                });
                Context requireContext2 = suggestedEditsImageRecsFragment.requireContext();
                String string2 = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_2);
                string2.getClass();
                Balloon tooltip$default2 = ShareUtil.getTooltip$default(requireContext2, string2, true, 0, false, true, 2, 3, 56);
                final int i3 = 1;
                tooltip$default2.onBalloonInitializedListener = new BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0(new Function1() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i32 = i3;
                        Unit unit = Unit.INSTANCE;
                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment2 = suggestedEditsImageRecsFragment;
                        View view2 = (View) obj;
                        switch (i32) {
                            case 0:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_2_dialog", actionStringForAnalytics$default, str);
                                break;
                            case 1:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str2 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion2.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_3_dialog", actionStringForAnalytics$default2, str2);
                                break;
                            default:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str3 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion3.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_4_dialog", actionStringForAnalytics$default3, str3);
                                break;
                        }
                        return unit;
                    }
                });
                tooltip$default2.setOnBalloonDismissListener(new Function0() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i32 = i3;
                        Unit unit = Unit.INSTANCE;
                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment2 = suggestedEditsImageRecsFragment;
                        switch (i32) {
                            case 0:
                                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion.getClass();
                                ImageRecommendationsEvent.Companion.logAction("next", "onboarding_step_2_dialog", actionStringForAnalytics$default, str);
                                break;
                            case 1:
                                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str2 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion2.getClass();
                                ImageRecommendationsEvent.Companion.logAction("next", "onboarding_step_3_dialog", actionStringForAnalytics$default2, str2);
                                break;
                            default:
                                ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str3 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion3.getClass();
                                ImageRecommendationsEvent.Companion.logAction("get_started", "onboarding_step_4_dialog", actionStringForAnalytics$default3, str3);
                                Prefs prefs = Prefs.INSTANCE;
                                PrefsIoUtil.setBoolean(R.string.preference_key_se_image_recs_onboarding_shown, true);
                                break;
                        }
                        return unit;
                    }
                });
                Context requireContext3 = suggestedEditsImageRecsFragment.requireContext();
                String string3 = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_3);
                string3.getClass();
                Balloon tooltip$default3 = ShareUtil.getTooltip$default(requireContext3, string3, true, 0, false, true, 3, 3, 184);
                final int i4 = 2;
                tooltip$default3.onBalloonInitializedListener = new BalloonKt$sam$com_skydoves_balloon_OnBalloonInitializedListener$0(new Function1() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        int i32 = i4;
                        Unit unit = Unit.INSTANCE;
                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment2 = suggestedEditsImageRecsFragment;
                        View view2 = (View) obj;
                        switch (i32) {
                            case 0:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_2_dialog", actionStringForAnalytics$default, str);
                                break;
                            case 1:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str2 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion2.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_3_dialog", actionStringForAnalytics$default2, str2);
                                break;
                            default:
                                view2.getClass();
                                ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str3 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion3.getClass();
                                ImageRecommendationsEvent.Companion.logImpression("onboarding_step_4_dialog", actionStringForAnalytics$default3, str3);
                                break;
                        }
                        return unit;
                    }
                });
                tooltip$default3.setOnBalloonDismissListener(new Function0() { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i32 = i4;
                        Unit unit = Unit.INSTANCE;
                        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment2 = suggestedEditsImageRecsFragment;
                        switch (i32) {
                            case 0:
                                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion.getClass();
                                ImageRecommendationsEvent.Companion.logAction("next", "onboarding_step_2_dialog", actionStringForAnalytics$default, str);
                                break;
                            case 1:
                                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str2 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion2.getClass();
                                ImageRecommendationsEvent.Companion.logAction("next", "onboarding_step_3_dialog", actionStringForAnalytics$default2, str2);
                                break;
                            default:
                                ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
                                String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment2, null, null, null, 15);
                                String str3 = suggestedEditsImageRecsFragment2.getViewModel().langCode;
                                companion3.getClass();
                                ImageRecommendationsEvent.Companion.logAction("get_started", "onboarding_step_4_dialog", actionStringForAnalytics$default3, str3);
                                Prefs prefs = Prefs.INSTANCE;
                                PrefsIoUtil.setBoolean(R.string.preference_key_se_image_recs_onboarding_shown, true);
                                break;
                        }
                        return unit;
                    }
                });
                MapChangeReceiver mapChangeReceiver2 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver2.getClass();
                int visibility = ((GoneIfEmptyTextView) mapChangeReceiver2.onWillStartLoadingMapListenerList).getVisibility();
                MapChangeReceiver mapChangeReceiver3 = suggestedEditsImageRecsFragment._binding;
                if (visibility == 0) {
                    mapChangeReceiver3.getClass();
                    view = (GoneIfEmptyTextView) mapChangeReceiver3.onWillStartLoadingMapListenerList;
                } else {
                    mapChangeReceiver3.getClass();
                    view = (TextView) mapChangeReceiver3.onDidFinishRenderingFrameList;
                }
                tooltip$default.showAlignBottom(view, 0);
                MapChangeReceiver mapChangeReceiver4 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver4.getClass();
                tooltip$default.setOnBalloonDismissListener(new Balloon$relayShowAlignTop$$inlined$relay$1(tooltip$default, tooltip$default2, (TextView) mapChangeReceiver4.onGlyphsRequestedList, Okio__OkioKt.roundedDpToPx(12.0f)));
                MapChangeReceiver mapChangeReceiver5 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver5.getClass();
                tooltip$default2.setOnBalloonDismissListener(new Balloon$relayShowAlignBottom$$inlined$relay$1(tooltip$default2, tooltip$default3, (MaterialButton) mapChangeReceiver5.onCameraIsChangingListenerList, 0));
                return;
        }
    }
}
