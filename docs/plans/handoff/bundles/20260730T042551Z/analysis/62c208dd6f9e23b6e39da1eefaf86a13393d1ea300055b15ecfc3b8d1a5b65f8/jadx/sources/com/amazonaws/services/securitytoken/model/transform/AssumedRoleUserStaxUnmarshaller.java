package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.AssumedRoleUser;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* loaded from: classes.dex */
public class AssumedRoleUserStaxUnmarshaller implements Unmarshaller<AssumedRoleUser, StaxUnmarshallerContext> {

    /* renamed from: do, reason: not valid java name */
    public static AssumedRoleUserStaxUnmarshaller f9025do;

    /* renamed from: if, reason: not valid java name */
    public static AssumedRoleUser m5154if(StaxUnmarshallerContext staxUnmarshallerContext) {
        AssumedRoleUser assumedRoleUser = new AssumedRoleUser();
        int m5161do = staxUnmarshallerContext.m5161do();
        int i = m5161do + 1;
        if (staxUnmarshallerContext.f9035do == 0) {
            i += 2;
        }
        while (true) {
            int m5163if = staxUnmarshallerContext.m5163if();
            if (m5163if == 1) {
                return assumedRoleUser;
            }
            if (m5163if == 2) {
                if (staxUnmarshallerContext.m5164new(i, "AssumedRoleId")) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                    assumedRoleUser.f9019break = staxUnmarshallerContext.m5162for();
                } else if (staxUnmarshallerContext.m5164new(i, "Arn")) {
                    SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                    assumedRoleUser.f9020catch = staxUnmarshallerContext.m5162for();
                }
            } else if (m5163if == 3 && staxUnmarshallerContext.m5161do() < m5161do) {
                return assumedRoleUser;
            }
        }
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ AssumedRoleUser mo5142do(StaxUnmarshallerContext staxUnmarshallerContext) {
        return m5154if(staxUnmarshallerContext);
    }
}
