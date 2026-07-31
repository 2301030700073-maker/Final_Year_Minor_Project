package net.newpipe.app.screen.settings.model;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.StringResource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SettingsCategory {
    public final DrawableResource icon;
    public final Function0 onClick;
    public final StringResource title;

    public SettingsCategory(StringResource stringResource, DrawableResource drawableResource, Function0 function0) {
        stringResource.getClass();
        drawableResource.getClass();
        function0.getClass();
        this.title = stringResource;
        this.icon = drawableResource;
        this.onClick = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SettingsCategory)) {
            return false;
        }
        SettingsCategory settingsCategory = (SettingsCategory) obj;
        return Intrinsics.areEqual(this.title, settingsCategory.title) && Intrinsics.areEqual(this.icon, settingsCategory.icon) && Intrinsics.areEqual(this.onClick, settingsCategory.onClick);
    }

    public final int hashCode() {
        return this.onClick.hashCode() + Modifier.CC.m(this.title.id.hashCode() * 31, 31, this.icon.id);
    }

    public final String toString() {
        return "SettingsCategory(title=" + this.title + ", icon=" + this.icon + ", onClick=" + this.onClick + ")";
    }
}
