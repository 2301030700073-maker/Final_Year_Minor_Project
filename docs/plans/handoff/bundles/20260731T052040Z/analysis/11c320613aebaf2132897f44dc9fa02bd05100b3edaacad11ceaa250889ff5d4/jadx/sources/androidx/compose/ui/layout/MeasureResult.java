package androidx.compose.ui.layout;

import java.util.Map;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface MeasureResult {
    Map getAlignmentLines();

    int getHeight();

    Function1 getRulers();

    int getWidth();

    void placeChildren();
}
