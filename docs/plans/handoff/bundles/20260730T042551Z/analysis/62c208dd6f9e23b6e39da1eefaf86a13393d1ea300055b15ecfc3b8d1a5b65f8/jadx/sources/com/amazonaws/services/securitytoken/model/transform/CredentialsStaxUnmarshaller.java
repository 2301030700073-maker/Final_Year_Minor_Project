package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.Credentials;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* loaded from: classes.dex */
public class CredentialsStaxUnmarshaller implements Unmarshaller<Credentials, StaxUnmarshallerContext> {

    /* renamed from: do, reason: not valid java name */
    public static CredentialsStaxUnmarshaller f9026do;

    /* renamed from: if, reason: not valid java name */
    public static Credentials m5155if(StaxUnmarshallerContext staxUnmarshallerContext) {
        Credentials credentials = new Credentials();
        int m5161do = staxUnmarshallerContext.m5161do();
        int i = m5161do + 1;
        if (staxUnmarshallerContext.f9035do == 0) {
            i += 2;
        }
        while (true) {
            int m5163if = staxUnmarshallerContext.m5163if();
            if (m5163if == 1) {
                return credentials;
            }
            if (m5163if == 2) {
                if (staxUnmarshallerContext.m5164new(i, "AccessKeyId")) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                    credentials.f9021break = staxUnmarshallerContext.m5162for();
                } else if (staxUnmarshallerContext.m5164new(i, "SecretAccessKey")) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                    credentials.f9022catch = staxUnmarshallerContext.m5162for();
                } else if (staxUnmarshallerContext.m5164new(i, "SessionToken")) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                    credentials.f9023class = staxUnmarshallerContext.m5162for();
                } else if (staxUnmarshallerContext.m5164new(i, "Expiration")) {
                    if (SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.f9032do == null) {
                        SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.f9032do = new SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller();
                    }
                    SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.f9032do.getClass();
                    credentials.f9024do = SimpleTypeStaxUnmarshallers.DateStaxUnmarshaller.m5159if(staxUnmarshallerContext);
                }
            } else if (m5163if == 3 && staxUnmarshallerContext.m5161do() < m5161do) {
                return credentials;
            }
        }
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Credentials mo5142do(StaxUnmarshallerContext staxUnmarshallerContext) {
        return m5155if(staxUnmarshallerContext);
    }
}
