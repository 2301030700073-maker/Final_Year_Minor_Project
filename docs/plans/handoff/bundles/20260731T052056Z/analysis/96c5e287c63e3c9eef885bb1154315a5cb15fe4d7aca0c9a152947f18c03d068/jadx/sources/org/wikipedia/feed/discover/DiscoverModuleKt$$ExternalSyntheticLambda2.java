package org.wikipedia.feed.discover;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.places.PlacesOfInterestModuleKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DiscoverModuleKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ WikiSite f$1;
    public final /* synthetic */ Function0 f$2;

    public /* synthetic */ DiscoverModuleKt$$ExternalSyntheticLambda2(int i, int i2, Modifier modifier, Function0 function0, WikiSite wikiSite) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = wikiSite;
        this.f$2 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$2;
        WikiSite wikiSite = this.f$1;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                DiscoverModuleKt.DiscoverEnablePromptModule(modifier, wikiSite, function0, gapComposer, Updater.updateChangedFlags(1));
                break;
            default:
                PlacesOfInterestModuleKt.PlacesOfInterestLocationPromptModule(modifier, wikiSite, function0, gapComposer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
