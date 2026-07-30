package com.amazonaws.mobileconnectors.amazonmobileanalytics.monetization;

import com.amazonaws.mobileconnectors.amazonmobileanalytics.EventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.util.StringUtil;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;

/* loaded from: classes.dex */
public abstract class MonetizationEventBuilder {

    /* renamed from: do, reason: not valid java name */
    public final EventClient f8955do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Double f8956do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f8957do;

    /* renamed from: for, reason: not valid java name */
    public String f8958for;

    /* renamed from: if, reason: not valid java name */
    public String f8959if;

    /* renamed from: new, reason: not valid java name */
    public String f8960new;

    public MonetizationEventBuilder(DefaultEventClient defaultEventClient) {
        this.f8955do = defaultEventClient;
    }

    /* renamed from: do, reason: not valid java name */
    public final EventConstraintDecorator m5117do() {
        GooglePlayMonetizationEventBuilder googlePlayMonetizationEventBuilder = (GooglePlayMonetizationEventBuilder) this;
        boolean z = false;
        if ((((MonetizationEventBuilder) googlePlayMonetizationEventBuilder).f8957do == null || ((MonetizationEventBuilder) googlePlayMonetizationEventBuilder).f8956do == null || googlePlayMonetizationEventBuilder.f8958for == null || googlePlayMonetizationEventBuilder.f8960new == null) ? false : true) {
            EventClient eventClient = this.f8955do;
            if (eventClient != null && !StringUtil.m5079if(this.f8957do) && this.f8956do != null && !StringUtil.m5079if(this.f8959if) && !StringUtil.m5079if(this.f8958for)) {
                z = true;
            }
            if (z) {
                EventConstraintDecorator m5101for = ((DefaultEventClient) eventClient).m5101for("_monetization.purchase");
                m5101for.mo5062else("_product_id", this.f8957do);
                m5101for.mo5062else("_store", this.f8959if);
                m5101for.mo5059break("_quantity", this.f8956do);
                String str = this.f8958for;
                if (str != null) {
                    m5101for.mo5062else("_item_price_formatted", str);
                }
                String str2 = this.f8960new;
                if (str2 == null) {
                    return m5101for;
                }
                m5101for.mo5062else("_transaction_id", str2);
                return m5101for;
            }
        }
        return null;
    }
}
