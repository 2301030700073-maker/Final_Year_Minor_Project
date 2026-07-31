package org.wikipedia.feed.random;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function6;
import okio.Okio__JvmOkioKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.search.NoSearchResultsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomModuleKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function0 f$10;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Function2 f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Function f$5;
    public final /* synthetic */ Function f$6;
    public final /* synthetic */ Function0 f$7;
    public final /* synthetic */ Function1 f$8;
    public final /* synthetic */ Function f$9;

    public /* synthetic */ RandomModuleKt$$ExternalSyntheticLambda1(Modifier modifier, WikiSite wikiSite, ForYouModule.Random random, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1, Function1 function12, Function0 function02, int i) {
        this.f$0 = modifier;
        this.f$1 = wikiSite;
        this.f$2 = random;
        this.f$3 = function2;
        this.f$4 = function22;
        this.f$5 = function23;
        this.f$6 = function24;
        this.f$7 = function0;
        this.f$8 = function1;
        this.f$9 = function12;
        this.f$10 = function02;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$9;
        Function function2 = this.f$6;
        Function function3 = this.f$5;
        Object obj3 = this.f$4;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                Okio__JvmOkioKt.RandomModule((Modifier) obj6, (WikiSite) obj5, (ForYouModule.Random) obj4, this.f$3, (Function2) obj3, (Function2) function3, (Function2) function2, this.f$7, this.f$8, (Function1) function, this.f$10, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                NoSearchResultsKt.HybridSearchResultsList((String) obj6, (ArrayList) obj5, (ArrayList) obj4, (String) obj3, (Function4) function3, (Function3) function2, this.f$7, this.f$10, this.f$8, (Function6) function, this.f$3, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ RandomModuleKt$$ExternalSyntheticLambda1(String str, ArrayList arrayList, ArrayList arrayList2, String str2, Function4 function4, Function3 function3, Function0 function0, Function0 function02, Function1 function1, Function6 function6, Function2 function2, int i) {
        this.f$0 = str;
        this.f$1 = arrayList;
        this.f$2 = arrayList2;
        this.f$4 = str2;
        this.f$5 = function4;
        this.f$6 = function3;
        this.f$7 = function0;
        this.f$10 = function02;
        this.f$8 = function1;
        this.f$9 = function6;
        this.f$3 = function2;
    }
}
