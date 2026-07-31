package net.thunderbird.feature.mail.message.list.ui.component.config;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemConfiguration {
    public final MessageItemAccountIndicator accountIndicator;
    public final MessageSublineConfiguration excerptLineConfiguration;
    public final MessageItemLeadingConfiguration leadingConfiguration;
    public final int maxExcerptLines;
    public final MessageSublineConfiguration secondaryLineConfiguration;
    public final MessageItemTrailingConfiguration trailingConfiguration;

    public MessageItemConfiguration(int i, MessageItemLeadingConfiguration messageItemLeadingConfiguration, MessageItemAccountIndicator messageItemAccountIndicator, MessageSublineConfiguration messageSublineConfiguration, MessageSublineConfiguration messageSublineConfiguration2, MessageItemTrailingConfiguration messageItemTrailingConfiguration) {
        this.maxExcerptLines = i;
        this.leadingConfiguration = messageItemLeadingConfiguration;
        this.accountIndicator = messageItemAccountIndicator;
        this.secondaryLineConfiguration = messageSublineConfiguration;
        this.excerptLineConfiguration = messageSublineConfiguration2;
        this.trailingConfiguration = messageItemTrailingConfiguration;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageItemConfiguration)) {
            return false;
        }
        MessageItemConfiguration messageItemConfiguration = (MessageItemConfiguration) obj;
        return this.maxExcerptLines == messageItemConfiguration.maxExcerptLines && Intrinsics.areEqual(this.leadingConfiguration, messageItemConfiguration.leadingConfiguration) && Intrinsics.areEqual(this.accountIndicator, messageItemConfiguration.accountIndicator) && Intrinsics.areEqual(this.secondaryLineConfiguration, messageItemConfiguration.secondaryLineConfiguration) && Intrinsics.areEqual(this.excerptLineConfiguration, messageItemConfiguration.excerptLineConfiguration) && Intrinsics.areEqual(this.trailingConfiguration, messageItemConfiguration.trailingConfiguration);
    }

    public final int hashCode() {
        int hashCode = (this.leadingConfiguration.hashCode() + (((this.maxExcerptLines * 31) + 1237) * 31)) * 31;
        MessageItemAccountIndicator messageItemAccountIndicator = this.accountIndicator;
        return this.trailingConfiguration.elements.hashCode() + ((this.excerptLineConfiguration.leadingItems.hashCode() + ((this.secondaryLineConfiguration.leadingItems.hashCode() + ((hashCode + (messageItemAccountIndicator == null ? 0 : messageItemAccountIndicator.hashCode())) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "MessageItemConfiguration(maxExcerptLines=" + this.maxExcerptLines + ", swapPrimaryLineWithSecondaryLine=false, leadingConfiguration=" + this.leadingConfiguration + ", accountIndicator=" + this.accountIndicator + ", secondaryLineConfiguration=" + this.secondaryLineConfiguration + ", excerptLineConfiguration=" + this.excerptLineConfiguration + ", trailingConfiguration=" + this.trailingConfiguration + ")";
    }
}
