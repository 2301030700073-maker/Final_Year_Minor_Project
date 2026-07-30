package com.amazonaws.services.securitytoken.model.transform;

import com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityResult;
import com.amazonaws.transform.SimpleTypeStaxUnmarshallers;
import com.amazonaws.transform.StaxUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* loaded from: classes.dex */
public class AssumeRoleWithWebIdentityResultStaxUnmarshaller implements Unmarshaller<AssumeRoleWithWebIdentityResult, StaxUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: do */
    public final AssumeRoleWithWebIdentityResult mo5142do(StaxUnmarshallerContext staxUnmarshallerContext) {
        StaxUnmarshallerContext staxUnmarshallerContext2 = staxUnmarshallerContext;
        AssumeRoleWithWebIdentityResult assumeRoleWithWebIdentityResult = new AssumeRoleWithWebIdentityResult();
        int m5161do = staxUnmarshallerContext2.m5161do();
        int i = m5161do + 1;
        if (staxUnmarshallerContext2.f9035do == 0) {
            i += 2;
        }
        while (true) {
            int m5163if = staxUnmarshallerContext2.m5163if();
            if (m5163if == 1) {
                break;
            }
            if (m5163if != 2) {
                if (m5163if == 3 && staxUnmarshallerContext2.m5161do() < m5161do) {
                    break;
                }
            } else if (staxUnmarshallerContext2.m5164new(i, "Credentials")) {
                if (CredentialsStaxUnmarshaller.f9026do == null) {
                    CredentialsStaxUnmarshaller.f9026do = new CredentialsStaxUnmarshaller();
                }
                CredentialsStaxUnmarshaller.f9026do.getClass();
                assumeRoleWithWebIdentityResult.f9017do = CredentialsStaxUnmarshaller.m5155if(staxUnmarshallerContext2);
            } else if (staxUnmarshallerContext2.m5164new(i, "SubjectFromWebIdentityToken")) {
                SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                assumeRoleWithWebIdentityResult.f9013break = staxUnmarshallerContext2.m5162for();
            } else if (staxUnmarshallerContext2.m5164new(i, "AssumedRoleUser")) {
                if (AssumedRoleUserStaxUnmarshaller.f9025do == null) {
                    AssumedRoleUserStaxUnmarshaller.f9025do = new AssumedRoleUserStaxUnmarshaller();
                }
                AssumedRoleUserStaxUnmarshaller.f9025do.getClass();
                assumeRoleWithWebIdentityResult.f9016do = AssumedRoleUserStaxUnmarshaller.m5154if(staxUnmarshallerContext2);
            } else if (staxUnmarshallerContext2.m5164new(i, "PackedPolicySize")) {
                if (SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.f9033do == null) {
                    SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.f9033do = new SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller();
                }
                SimpleTypeStaxUnmarshallers.IntegerStaxUnmarshaller.f9033do.getClass();
                String m5162for = staxUnmarshallerContext2.m5162for();
                assumeRoleWithWebIdentityResult.f9018do = m5162for == null ? null : Integer.valueOf(Integer.parseInt(m5162for));
            } else if (staxUnmarshallerContext2.m5164new(i, "Provider")) {
                SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                assumeRoleWithWebIdentityResult.f9014catch = staxUnmarshallerContext2.m5162for();
            } else if (staxUnmarshallerContext2.m5164new(i, "Audience")) {
                SimpleTypeStaxUnmarshallers.StringStaxUnmarshaller.m5160if().getClass();
                assumeRoleWithWebIdentityResult.f9015class = staxUnmarshallerContext2.m5162for();
            }
        }
        return assumeRoleWithWebIdentityResult;
    }
}
