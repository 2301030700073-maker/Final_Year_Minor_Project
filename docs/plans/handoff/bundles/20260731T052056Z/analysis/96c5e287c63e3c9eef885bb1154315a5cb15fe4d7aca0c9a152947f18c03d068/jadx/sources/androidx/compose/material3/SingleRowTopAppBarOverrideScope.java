package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleRowTopAppBarOverrideScope {
    public final Function3 actions;
    public final TopAppBarColors colors;
    public final float expandedHeight;
    public final Modifier modifier;
    public final Function2 navigationIcon;
    public final PinnedScrollBehavior scrollBehavior;
    public final TextStyle subtitleTextStyle;
    public final ComposableLambdaImpl title;
    public final TextStyle titleTextStyle;
    public final WindowInsets windowInsets;

    public SingleRowTopAppBarOverrideScope(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, TextStyle textStyle, TextStyle textStyle2, Function2 function2, Function3 function3, float f, WindowInsets windowInsets, TopAppBarColors topAppBarColors, PinnedScrollBehavior pinnedScrollBehavior) {
        this.modifier = modifier;
        this.title = composableLambdaImpl;
        this.titleTextStyle = textStyle;
        this.subtitleTextStyle = textStyle2;
        this.navigationIcon = function2;
        this.actions = function3;
        this.expandedHeight = f;
        this.windowInsets = windowInsets;
        this.colors = topAppBarColors;
        this.scrollBehavior = pinnedScrollBehavior;
    }
}
