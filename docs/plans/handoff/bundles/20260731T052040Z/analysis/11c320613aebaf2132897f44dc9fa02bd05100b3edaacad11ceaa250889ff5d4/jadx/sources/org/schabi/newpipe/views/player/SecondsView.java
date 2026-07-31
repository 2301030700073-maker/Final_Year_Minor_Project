package org.schabi.newpipe.views.player;

import android.animation.ValueAnimator;
import android.content.Context;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlayerFastSeekSecondsViewBinding;
import org.schabi.newpipe.ktx.ViewUtils$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.DeviceUtils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SecondsView extends LinearLayout {
    public static final Companion Companion = new Companion();
    public final boolean animationsEnabled;
    public final PlayerFastSeekSecondsViewBinding binding;
    public long cycleDuration;
    public final CustomValueAnimator fifthAnimator;
    public final CustomValueAnimator firstAnimator;
    public final CustomValueAnimator fourthAnimator;
    public final CustomValueAnimator secondAnimator;
    public int seconds;
    public final CustomValueAnimator thirdAnimator;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class CustomValueAnimator extends ValueAnimator {
        public CustomValueAnimator(SecondsView secondsView, Function0 function0, Function1 function1, Function0 function02) {
            setDuration(secondsView.getCycleDuration() / 5);
            setFloatValues(0.0f, 1.0f);
            addUpdateListener(new ViewUtils$$ExternalSyntheticLambda0(function1, 4));
            addListener(new CircularProgressDrawable.AnonymousClass2(function02, function0));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecondsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.cycleDuration = 750L;
        boolean z = DeviceUtils.SAMSUNG;
        final int i = 0;
        final int i2 = 1;
        this.animationsEnabled = Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f;
        LayoutInflater.from(context).inflate(R.layout.player_fast_seek_seconds_view, this);
        int i3 = R.id.icon_1;
        AppCompatImageView appCompatImageView = (AppCompatImageView) Options.Companion.findChildViewById(R.id.icon_1, this);
        if (appCompatImageView != null) {
            i3 = R.id.icon_2;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) Options.Companion.findChildViewById(R.id.icon_2, this);
            if (appCompatImageView2 != null) {
                i3 = R.id.icon_3;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) Options.Companion.findChildViewById(R.id.icon_3, this);
                if (appCompatImageView3 != null) {
                    i3 = R.id.triangle_container;
                    LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.triangle_container, this);
                    if (linearLayout != null) {
                        i3 = R.id.tv_seconds;
                        TextView textView = (TextView) Options.Companion.findChildViewById(R.id.tv_seconds, this);
                        if (textView != null) {
                            this.binding = new PlayerFastSeekSecondsViewBinding(this, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayout, textView);
                            setOrientation(1);
                            setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                            final int i4 = 3;
                            final int i5 = 8;
                            this.firstAnimator = new CustomValueAnimator(this, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i6 = i;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i6) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda1
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i6 = i4;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    float floatValue = ((Float) obj).floatValue();
                                    switch (i6) {
                                        case 0:
                                            secondsView.binding.icon2.setAlpha(1.0f - floatValue);
                                            break;
                                        case 1:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(1.0f - playerFastSeekSecondsViewBinding.icon3.getAlpha());
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(floatValue);
                                            break;
                                        case 2:
                                            secondsView.binding.icon3.setAlpha(1.0f - floatValue);
                                            break;
                                        case 3:
                                            secondsView.binding.icon1.setAlpha(floatValue);
                                            break;
                                        default:
                                            secondsView.binding.icon2.setAlpha(floatValue);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i6 = i5;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i6) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            });
                            final int i6 = 9;
                            final int i7 = 4;
                            this.secondAnimator = new CustomValueAnimator(this, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i6;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda1
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i62 = i7;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    float floatValue = ((Float) obj).floatValue();
                                    switch (i62) {
                                        case 0:
                                            secondsView.binding.icon2.setAlpha(1.0f - floatValue);
                                            break;
                                        case 1:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(1.0f - playerFastSeekSecondsViewBinding.icon3.getAlpha());
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(floatValue);
                                            break;
                                        case 2:
                                            secondsView.binding.icon3.setAlpha(1.0f - floatValue);
                                            break;
                                        case 3:
                                            secondsView.binding.icon1.setAlpha(floatValue);
                                            break;
                                        default:
                                            secondsView.binding.icon2.setAlpha(floatValue);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i2;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            });
                            final int i8 = 2;
                            this.thirdAnimator = new CustomValueAnimator(this, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i8;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda1
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i62 = i2;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    float floatValue = ((Float) obj).floatValue();
                                    switch (i62) {
                                        case 0:
                                            secondsView.binding.icon2.setAlpha(1.0f - floatValue);
                                            break;
                                        case 1:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(1.0f - playerFastSeekSecondsViewBinding.icon3.getAlpha());
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(floatValue);
                                            break;
                                        case 2:
                                            secondsView.binding.icon3.setAlpha(1.0f - floatValue);
                                            break;
                                        case 3:
                                            secondsView.binding.icon1.setAlpha(floatValue);
                                            break;
                                        default:
                                            secondsView.binding.icon2.setAlpha(floatValue);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i4;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            });
                            final int i9 = 5;
                            this.fourthAnimator = new CustomValueAnimator(this, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i7;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda1
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i62 = i;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    float floatValue = ((Float) obj).floatValue();
                                    switch (i62) {
                                        case 0:
                                            secondsView.binding.icon2.setAlpha(1.0f - floatValue);
                                            break;
                                        case 1:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(1.0f - playerFastSeekSecondsViewBinding.icon3.getAlpha());
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(floatValue);
                                            break;
                                        case 2:
                                            secondsView.binding.icon3.setAlpha(1.0f - floatValue);
                                            break;
                                        case 3:
                                            secondsView.binding.icon1.setAlpha(floatValue);
                                            break;
                                        default:
                                            secondsView.binding.icon2.setAlpha(floatValue);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i9;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            });
                            final int i10 = 6;
                            final int i11 = 7;
                            this.fifthAnimator = new CustomValueAnimator(this, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i10;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda1
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    int i62 = i8;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    float floatValue = ((Float) obj).floatValue();
                                    switch (i62) {
                                        case 0:
                                            secondsView.binding.icon2.setAlpha(1.0f - floatValue);
                                            break;
                                        case 1:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(1.0f - playerFastSeekSecondsViewBinding.icon3.getAlpha());
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(floatValue);
                                            break;
                                        case 2:
                                            secondsView.binding.icon3.setAlpha(1.0f - floatValue);
                                            break;
                                        case 3:
                                            secondsView.binding.icon1.setAlpha(floatValue);
                                            break;
                                        default:
                                            secondsView.binding.icon2.setAlpha(floatValue);
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function0(this) { // from class: org.schabi.newpipe.views.player.SecondsView$$ExternalSyntheticLambda0
                                public final /* synthetic */ SecondsView f$0;

                                {
                                    this.f$0 = this;
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i62 = i11;
                                    Unit unit = Unit.INSTANCE;
                                    SecondsView secondsView = this.f$0;
                                    switch (i62) {
                                        case 0:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = secondsView.binding;
                                            playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
                                            break;
                                        case 1:
                                            secondsView.thirdAnimator.start();
                                            break;
                                        case 2:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding2 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding2.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding2.icon3.setAlpha(0.0f);
                                            break;
                                        case 3:
                                            secondsView.fourthAnimator.start();
                                            break;
                                        case 4:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding3 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding3.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding3.icon2.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding3.icon3.setAlpha(1.0f);
                                            break;
                                        case 5:
                                            secondsView.fifthAnimator.start();
                                            break;
                                        case 6:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding4 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding4.icon1.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding4.icon3.setAlpha(1.0f);
                                            break;
                                        case 7:
                                            secondsView.firstAnimator.start();
                                            break;
                                        case 8:
                                            secondsView.secondAnimator.start();
                                            break;
                                        default:
                                            PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding5 = secondsView.binding;
                                            playerFastSeekSecondsViewBinding5.icon1.setAlpha(1.0f);
                                            playerFastSeekSecondsViewBinding5.icon2.setAlpha(0.0f);
                                            playerFastSeekSecondsViewBinding5.icon3.setAlpha(0.0f);
                                            break;
                                    }
                                    return unit;
                                }
                            });
                            return;
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(getResources().getResourceName(i3)));
        throw null;
    }

    public final PlayerFastSeekSecondsViewBinding getBinding() {
        return this.binding;
    }

    public final long getCycleDuration() {
        return this.cycleDuration;
    }

    public final int getSeconds() {
        return this.seconds;
    }

    public final void setCycleDuration(long j) {
        long j2 = j / 5;
        this.firstAnimator.setDuration(j2);
        this.secondAnimator.setDuration(j2);
        this.thirdAnimator.setDuration(j2);
        this.fourthAnimator.setDuration(j2);
        this.fifthAnimator.setDuration(j2);
        this.cycleDuration = j;
    }

    public final void setForwarding(boolean z) {
        this.binding.triangleContainer.setRotation(z ? 0.0f : 180.0f);
    }

    public final void setSeconds(int i) {
        this.binding.tvSeconds.setText(getContext().getResources().getQuantityString(R.plurals.seconds, i, Integer.valueOf(i)));
        this.seconds = i;
    }

    public final void stopAnimation() {
        this.firstAnimator.cancel();
        this.secondAnimator.cancel();
        this.thirdAnimator.cancel();
        this.fourthAnimator.cancel();
        this.fifthAnimator.cancel();
        PlayerFastSeekSecondsViewBinding playerFastSeekSecondsViewBinding = this.binding;
        playerFastSeekSecondsViewBinding.icon1.setAlpha(0.0f);
        playerFastSeekSecondsViewBinding.icon2.setAlpha(0.0f);
        playerFastSeekSecondsViewBinding.icon3.setAlpha(0.0f);
    }
}
