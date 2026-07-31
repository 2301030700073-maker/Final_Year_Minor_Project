package app.k9mail.feature.account.setup.ui.options.display;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.validation.input.StringInputField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayOptionsContract$State {
    public final StringInputField accountName;
    public final StringInputField displayName;
    public final StringInputField emailSignature;

    public DisplayOptionsContract$State(StringInputField stringInputField, StringInputField stringInputField2, StringInputField stringInputField3) {
        stringInputField.getClass();
        stringInputField2.getClass();
        stringInputField3.getClass();
        this.accountName = stringInputField;
        this.displayName = stringInputField2;
        this.emailSignature = stringInputField3;
    }

    public static DisplayOptionsContract$State copy$default(DisplayOptionsContract$State displayOptionsContract$State, StringInputField stringInputField, StringInputField stringInputField2, StringInputField stringInputField3, int i) {
        if ((i & 1) != 0) {
            stringInputField = displayOptionsContract$State.accountName;
        }
        if ((i & 2) != 0) {
            stringInputField2 = displayOptionsContract$State.displayName;
        }
        if ((i & 4) != 0) {
            stringInputField3 = displayOptionsContract$State.emailSignature;
        }
        displayOptionsContract$State.getClass();
        stringInputField.getClass();
        stringInputField2.getClass();
        stringInputField3.getClass();
        return new DisplayOptionsContract$State(stringInputField, stringInputField2, stringInputField3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayOptionsContract$State)) {
            return false;
        }
        DisplayOptionsContract$State displayOptionsContract$State = (DisplayOptionsContract$State) obj;
        return Intrinsics.areEqual(this.accountName, displayOptionsContract$State.accountName) && Intrinsics.areEqual(this.displayName, displayOptionsContract$State.displayName) && Intrinsics.areEqual(this.emailSignature, displayOptionsContract$State.emailSignature);
    }

    public final int hashCode() {
        return this.emailSignature.hashCode() + ((this.displayName.hashCode() + (this.accountName.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "State(accountName=" + this.accountName + ", displayName=" + this.displayName + ", emailSignature=" + this.emailSignature + ")";
    }
}
