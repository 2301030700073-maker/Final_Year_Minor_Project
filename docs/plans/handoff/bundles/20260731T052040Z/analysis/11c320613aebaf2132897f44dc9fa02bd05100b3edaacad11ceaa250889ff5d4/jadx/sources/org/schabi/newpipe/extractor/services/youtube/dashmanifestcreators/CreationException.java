package org.schabi.newpipe.extractor.services.youtube.dashmanifestcreators;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CreationException extends RuntimeException {
    public static CreationException couldNotAddElement(RuntimeException runtimeException, String str) {
        return new CreationException(Modifier.CC.m("Could not add ", str, " element"), runtimeException);
    }

    public static CreationException couldNotAddElement(String str, String str2) {
        return new CreationException(Owner.CC.m("Could not add ", str, " element: ", str2));
    }
}
