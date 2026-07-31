package net.thunderbird.feature.mail.message.reader.impl.css;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultCssVariableNameProvider {
    public final String blockquoteDefaultBorderLeftColor;

    public DefaultCssVariableNameProvider(DefaultCssClassNameProvider defaultCssClassNameProvider) {
        this.blockquoteDefaultBorderLeftColor = CameraDevices$CC.m("--", defaultCssClassNameProvider.defaultNamespaceClassName, "__blockquote-default-border-color");
    }
}
