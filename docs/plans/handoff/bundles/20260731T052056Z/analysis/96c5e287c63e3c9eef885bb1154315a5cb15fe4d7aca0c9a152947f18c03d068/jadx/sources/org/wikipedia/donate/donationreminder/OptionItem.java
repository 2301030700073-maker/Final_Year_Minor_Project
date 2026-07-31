package org.wikipedia.donate.donationreminder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OptionItem {
    public final String displayText;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Custom extends OptionItem {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Preset extends OptionItem {
        public final String text;
        public final Number value;

        public Preset(String str, Number number) {
            super(str);
            this.value = number;
            this.text = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Preset)) {
                return false;
            }
            Preset preset = (Preset) obj;
            return this.value.equals(preset.value) && this.text.equals(preset.text);
        }

        public final int hashCode() {
            return this.text.hashCode() + (this.value.hashCode() * 31);
        }

        public final String toString() {
            return "Preset(value=" + this.value + ", text=" + this.text + ")";
        }
    }

    public OptionItem(String str) {
        this.displayText = str;
    }
}
