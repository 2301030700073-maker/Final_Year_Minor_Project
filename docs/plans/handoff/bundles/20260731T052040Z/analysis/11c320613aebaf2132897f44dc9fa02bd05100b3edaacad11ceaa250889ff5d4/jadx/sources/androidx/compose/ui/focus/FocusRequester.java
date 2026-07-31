package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.BackwardsCompatNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FocusRequester {
    public final MutableVector focusRequesterNodes = new MutableVector(new BackwardsCompatNode[16]);
    public static final FocusRequester Default = new FocusRequester();
    public static final FocusRequester Cancel = new FocusRequester();
    public static final FocusRequester Redirect = new FocusRequester();
}
