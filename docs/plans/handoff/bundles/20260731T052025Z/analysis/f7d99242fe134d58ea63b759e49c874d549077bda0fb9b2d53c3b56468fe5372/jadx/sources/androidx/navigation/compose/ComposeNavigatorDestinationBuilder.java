package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NavDestination;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.compose.ComposeNavigator;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposeNavigatorDestinationBuilder extends NavDestinationBuilder {
    public final ComposeNavigator composeNavigator;
    public final ComposableLambdaImpl content;

    public ComposeNavigatorDestinationBuilder(ComposeNavigator composeNavigator, ClassReference classReference, ComposableLambdaImpl composableLambdaImpl) {
        super(composeNavigator, classReference, EmptyMap.INSTANCE);
        this.composeNavigator = composeNavigator;
        this.content = composableLambdaImpl;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavDestination build() {
        return (ComposeNavigator.Destination) super.build();
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavDestination instantiateDestination() {
        return new ComposeNavigator.Destination(this.composeNavigator, this.content);
    }

    public ComposeNavigatorDestinationBuilder(ComposeNavigator composeNavigator, String str, ComposableLambdaImpl composableLambdaImpl) {
        super(composeNavigator, -1, str);
        this.composeNavigator = composeNavigator;
        this.content = composableLambdaImpl;
    }
}
