package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleRowTopAppBarOverrideScope {
    public final Function3 actions;
    public final TopAppBarColors colors;
    public final PaddingValues contentPadding;
    public final float expandedHeight;
    public final Modifier modifier;
    public final ComposableLambdaImpl navigationIcon;
    public final TextStyle subtitleTextStyle;
    public final ComposableLambdaImpl title;
    public final TextStyle titleTextStyle;
    public final WindowInsets windowInsets;

    public SingleRowTopAppBarOverrideScope(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, TextStyle textStyle, TextStyle textStyle2, ComposableLambdaImpl composableLambdaImpl2, Function3 function3, float f, PaddingValues paddingValues, WindowInsets windowInsets, TopAppBarColors topAppBarColors) {
        this.modifier = modifier;
        this.title = composableLambdaImpl;
        this.titleTextStyle = textStyle;
        this.subtitleTextStyle = textStyle2;
        this.navigationIcon = composableLambdaImpl2;
        this.actions = function3;
        this.expandedHeight = f;
        this.contentPadding = paddingValues;
        this.windowInsets = windowInsets;
        this.colors = topAppBarColors;
    }
}
