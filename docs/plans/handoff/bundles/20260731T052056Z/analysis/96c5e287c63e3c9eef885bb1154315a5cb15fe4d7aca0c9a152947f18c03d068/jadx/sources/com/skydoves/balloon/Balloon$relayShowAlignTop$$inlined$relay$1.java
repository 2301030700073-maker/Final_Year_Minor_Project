package com.skydoves.balloon;

import android.content.Context;
import android.view.View;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.language.addlanguages.LanguageListItem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Balloon$relayShowAlignTop$$inlined$relay$1 implements Function0 {
    public final /* synthetic */ Object $anchor$inlined;
    public final /* synthetic */ Object $balloon;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ int $yOff$inlined;
    public final /* synthetic */ Object this$0;

    public Balloon$relayShowAlignTop$$inlined$relay$1(Context context, int i, Function1 function1, LanguageListItem languageListItem) {
        this.this$0 = context;
        this.$yOff$inlined = i;
        this.$balloon = function1;
        this.$anchor$inlined = languageListItem;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.$anchor$inlined;
        Object obj2 = this.$balloon;
        int i2 = this.$yOff$inlined;
        Object obj3 = this.this$0;
        switch (i) {
            case 0:
                if (!((Balloon) obj3).destroyed) {
                    Balloon balloon = (Balloon) obj2;
                    BalloonPlacement balloonPlacement = new BalloonPlacement((View) obj, BalloonAlign.TOP, i2);
                    View view = balloonPlacement.anchor;
                    if (balloon.canShowBalloonWindow(view)) {
                        view.post(new Processor$$ExternalSyntheticLambda1(balloon, view, balloonPlacement, 7));
                        break;
                    }
                }
                break;
            default:
                BreadCrumbLogEvent.Companion.getClass();
                BreadCrumbLogEvent.Companion.logClick((Context) obj3, "listItem." + i2);
                ((Function1) obj2).invoke(((LanguageListItem) obj).code);
                break;
        }
        return unit;
    }

    public Balloon$relayShowAlignTop$$inlined$relay$1(Balloon balloon, Balloon balloon2, View view, int i) {
        this.this$0 = balloon;
        this.$balloon = balloon2;
        this.$anchor$inlined = view;
        this.$yOff$inlined = i;
    }
}
