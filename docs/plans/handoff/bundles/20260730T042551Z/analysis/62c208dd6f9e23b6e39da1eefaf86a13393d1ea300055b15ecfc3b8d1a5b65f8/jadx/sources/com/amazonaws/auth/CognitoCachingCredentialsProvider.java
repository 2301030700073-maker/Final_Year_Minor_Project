package com.amazonaws.auth;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazonaws.services.cognitoidentity.model.NotAuthorizedException;
import com.amazonaws.util.VersionInfoUtils;
import java.util.Date;

/* loaded from: classes.dex */
public class CognitoCachingCredentialsProvider extends CognitoCredentialsProvider {

    /* renamed from: try, reason: not valid java name */
    public static final String f8716try;

    /* renamed from: do, reason: not valid java name */
    public final SharedPreferences f8717do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final IdentityChangedListener f8718do;

    /* renamed from: new, reason: not valid java name */
    public String f8719new;

    static {
        String name = CognitoCachingCredentialsProvider.class.getName();
        String str = VersionInfoUtils.f9082do;
        f8716try = name.concat("/2.2.15");
    }

    public CognitoCachingCredentialsProvider(Context context) {
        IdentityChangedListener identityChangedListener = new IdentityChangedListener() { // from class: com.amazonaws.auth.CognitoCachingCredentialsProvider.1
            @Override // com.amazonaws.auth.IdentityChangedListener
            /* renamed from: do, reason: not valid java name */
            public final void mo5018do(String str) {
                String str2 = CognitoCachingCredentialsProvider.f8716try;
                CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider = CognitoCachingCredentialsProvider.this;
                cognitoCachingCredentialsProvider.m5017this(str);
                ((CognitoCredentialsProvider) cognitoCachingCredentialsProvider).f8723do = null;
                ((CognitoCredentialsProvider) cognitoCachingCredentialsProvider).f8726do = null;
                cognitoCachingCredentialsProvider.f8717do.edit().remove(cognitoCachingCredentialsProvider.m5014else("accessKey")).remove(cognitoCachingCredentialsProvider.m5014else("secretKey")).remove(cognitoCachingCredentialsProvider.m5014else("sessionToken")).remove(cognitoCachingCredentialsProvider.m5014else("expirationDate")).apply();
            }
        };
        this.f8718do = identityChangedListener;
        if (context == null) {
            throw new IllegalArgumentException("context can't be null");
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.amazonaws.android.auth", 0);
        this.f8717do = sharedPreferences;
        if (sharedPreferences.contains("identityId")) {
            sharedPreferences.edit().clear().putString(m5014else("identityId"), sharedPreferences.getString("identityId", null)).apply();
        }
        String string = sharedPreferences.getString(m5014else("identityId"), null);
        if (string != null && this.f8719new == null) {
            ((CognitoCredentialsProvider) this).f8722do.m4993for(string);
        }
        this.f8719new = string;
        m5013case();
        ((CognitoCredentialsProvider) this).f8722do.f8707do.add(identityChangedListener);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5013case() {
        String m5014else = m5014else("expirationDate");
        SharedPreferences sharedPreferences = this.f8717do;
        ((CognitoCredentialsProvider) this).f8726do = new Date(sharedPreferences.getLong(m5014else, 0L));
        boolean contains = sharedPreferences.contains(m5014else("accessKey"));
        boolean contains2 = sharedPreferences.contains(m5014else("secretKey"));
        boolean contains3 = sharedPreferences.contains(m5014else("sessionToken"));
        if (contains && contains2 && contains3) {
            ((CognitoCredentialsProvider) this).f8723do = new BasicSessionCredentials(sharedPreferences.getString(m5014else("accessKey"), null), sharedPreferences.getString(m5014else("secretKey"), null), sharedPreferences.getString(m5014else("sessionToken"), null));
        } else {
            ((CognitoCredentialsProvider) this).f8726do = null;
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    /* renamed from: do */
    public final AWSCredentials mo4997do() {
        BasicSessionCredentials basicSessionCredentials;
        synchronized (this) {
            if (((CognitoCredentialsProvider) this).f8723do == null) {
                m5013case();
            }
            if (m5019for()) {
                try {
                    if (m5019for()) {
                        m5021try();
                    }
                } catch (NotAuthorizedException e) {
                    AWSAbstractCognitoIdentityProvider aWSAbstractCognitoIdentityProvider = ((CognitoCredentialsProvider) this).f8722do;
                    if (aWSAbstractCognitoIdentityProvider.f8708do == null) {
                        throw e;
                    }
                    aWSAbstractCognitoIdentityProvider.m4993for(null);
                    if (m5019for()) {
                        m5021try();
                    }
                }
                m5015goto(((CognitoCredentialsProvider) this).f8723do, ((CognitoCredentialsProvider) this).f8726do.getTime());
                basicSessionCredentials = ((CognitoCredentialsProvider) this).f8723do;
            } else {
                basicSessionCredentials = ((CognitoCredentialsProvider) this).f8723do;
            }
        }
        return basicSessionCredentials;
    }

    /* renamed from: else, reason: not valid java name */
    public final String m5014else(String str) {
        return ((CognitoCredentialsProvider) this).f8722do.f8709for + "." + str;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m5015goto(AWSSessionCredentials aWSSessionCredentials, long j) {
        if (aWSSessionCredentials != null) {
            this.f8717do.edit().putString(m5014else("accessKey"), aWSSessionCredentials.mo4996if()).putString(m5014else("secretKey"), aWSSessionCredentials.mo4995do()).putString(m5014else("sessionToken"), aWSSessionCredentials.mo4999for()).putLong(m5014else("expirationDate"), j).apply();
        }
    }

    @Override // com.amazonaws.auth.CognitoCredentialsProvider
    /* renamed from: if, reason: not valid java name */
    public final String mo5016if() {
        String string = this.f8717do.getString(m5014else("identityId"), null);
        AWSAbstractCognitoIdentityProvider aWSAbstractCognitoIdentityProvider = ((CognitoCredentialsProvider) this).f8722do;
        if (string != null && this.f8719new == null) {
            aWSAbstractCognitoIdentityProvider.m4993for(string);
        }
        this.f8719new = string;
        if (string == null) {
            String m4994if = aWSAbstractCognitoIdentityProvider.m4994if();
            this.f8719new = m4994if;
            m5017this(m4994if);
        }
        return this.f8719new;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5017this(String str) {
        this.f8719new = str;
        this.f8717do.edit().putString(m5014else("identityId"), str).apply();
    }
}
