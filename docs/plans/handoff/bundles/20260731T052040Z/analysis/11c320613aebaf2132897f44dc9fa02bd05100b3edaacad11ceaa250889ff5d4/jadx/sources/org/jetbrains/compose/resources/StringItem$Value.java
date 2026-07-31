package org.jetbrains.compose.resources;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StringItem$Value {
    public final String text;

    public StringItem$Value(String str) {
        this.text = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StringItem$Value) && this.text.equals(((StringItem$Value) obj).text);
    }

    public final int hashCode() {
        return this.text.hashCode();
    }

    public final String toString() {
        return Modifier.CC.m("Value(text=", this.text, ")");
    }
}
