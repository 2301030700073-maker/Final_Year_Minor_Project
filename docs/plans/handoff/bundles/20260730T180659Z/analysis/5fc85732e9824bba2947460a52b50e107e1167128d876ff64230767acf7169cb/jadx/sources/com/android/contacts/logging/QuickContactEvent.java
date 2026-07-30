package com.android.contacts.logging;

import com.google.common.base.MoreObjects;

/* loaded from: classes.dex */
public final class QuickContactEvent {
    public int actionType;
    public int cardType;
    public int contactType;
    public String referrer;
    public String thirdPartyAction;

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        stringHelper.add("referrer", this.referrer);
        stringHelper.add("contactType", this.contactType);
        stringHelper.add("cardType", this.cardType);
        stringHelper.add("actionType", this.actionType);
        stringHelper.add("thirdPartyAction", this.thirdPartyAction);
        return stringHelper.toString();
    }
}
