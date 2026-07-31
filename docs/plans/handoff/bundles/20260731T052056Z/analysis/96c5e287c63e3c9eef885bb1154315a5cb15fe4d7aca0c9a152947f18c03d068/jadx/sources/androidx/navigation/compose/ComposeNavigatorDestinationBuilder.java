package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NavDestination;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.compose.ComposeNavigator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposeNavigatorDestinationBuilder extends NavDestinationBuilder {
    public final ComposeNavigator composeNavigator;
    public final ComposableLambdaImpl content;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ComposeNavigatorDestinationBuilder(androidx.navigation.compose.ComposeNavigator r13, kotlin.reflect.KClass r14, androidx.compose.runtime.internal.ComposableLambdaImpl r15) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.compose.ComposeNavigatorDestinationBuilder.<init>(androidx.navigation.compose.ComposeNavigator, kotlin.reflect.KClass, androidx.compose.runtime.internal.ComposableLambdaImpl):void");
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavDestination build() {
        return (ComposeNavigator.Destination) super.build();
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavDestination instantiateDestination() {
        return new ComposeNavigator.Destination(this.composeNavigator, this.content);
    }

    public ComposeNavigatorDestinationBuilder(ComposeNavigator composeNavigator, ComposableLambdaImpl composableLambdaImpl) {
        super(composeNavigator, -1, "yir_2025");
        this.composeNavigator = composeNavigator;
        this.content = composableLambdaImpl;
    }
}
