package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ClientContext {

    /* renamed from: break, reason: not valid java name */
    public String f8877break;

    /* renamed from: case, reason: not valid java name */
    public String f8878case;

    /* renamed from: catch, reason: not valid java name */
    public String f8879catch;

    /* renamed from: class, reason: not valid java name */
    public String f8880class;

    /* renamed from: const, reason: not valid java name */
    public String f8881const;

    /* renamed from: do, reason: not valid java name */
    public String f8882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Map<String, String> f8883do;

    /* renamed from: else, reason: not valid java name */
    public String f8884else;

    /* renamed from: for, reason: not valid java name */
    public String f8885for;

    /* renamed from: goto, reason: not valid java name */
    public String f8886goto;

    /* renamed from: if, reason: not valid java name */
    public String f8887if;

    /* renamed from: new, reason: not valid java name */
    public String f8888new;

    /* renamed from: this, reason: not valid java name */
    public String f8889this;

    /* renamed from: try, reason: not valid java name */
    public String f8890try;

    public static class ClientContextBuilder {

        /* renamed from: do, reason: not valid java name */
        public String f8896do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: if, reason: not valid java name */
        public String f8901if = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: for, reason: not valid java name */
        public String f8899for = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: new, reason: not valid java name */
        public String f8902new = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: try, reason: not valid java name */
        public String f8904try = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: case, reason: not valid java name */
        public String f8892case = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: else, reason: not valid java name */
        public String f8898else = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: goto, reason: not valid java name */
        public final String f8900goto = "ANDROID";

        /* renamed from: this, reason: not valid java name */
        public String f8903this = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: break, reason: not valid java name */
        public String f8891break = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: catch, reason: not valid java name */
        public String f8893catch = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: class, reason: not valid java name */
        public String f8894class = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final HashMap f8897do = new HashMap();

        /* renamed from: const, reason: not valid java name */
        public String f8895const = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public /* synthetic */ ClientContext(int i) {
        this();
    }

    private ClientContext() {
        this.f8882do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8887if = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8885for = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8888new = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8890try = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8878case = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8884else = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8886goto = "ANDROID";
        this.f8889this = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8877break = "en-US";
        this.f8879catch = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8880class = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f8883do = new HashMap();
        this.f8881const = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }
}
