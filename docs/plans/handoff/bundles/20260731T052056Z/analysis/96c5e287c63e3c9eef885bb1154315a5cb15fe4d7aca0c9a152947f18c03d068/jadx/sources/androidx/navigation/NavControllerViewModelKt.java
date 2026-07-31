package androidx.navigation;

import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import coil3.network.NetworkHeaders;
import kotlin.jvm.internal.Reflection;
import org.wikipedia.talk.TalkTopicsViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NavControllerViewModelKt {
    public static final TalkTopicsViewModel.Factory FACTORY;

    static {
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(3);
        builder.addInitializer(Reflection.factory.getOrCreateKotlinClass(NavControllerViewModel.class), new PagingSource$$ExternalSyntheticLambda0(18));
        FACTORY = builder.build();
    }
}
