package com.amazonaws.transform;

import com.amazonaws.AmazonClientException;
import defpackage.V1;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller implements Unmarshaller<Date, JsonUnmarshallerContext> {

    /* renamed from: do, reason: not valid java name */
    public static SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller f9029do;

    /* renamed from: if, reason: not valid java name */
    public static Date m5156if(JsonUnmarshallerContext jsonUnmarshallerContext) {
        String mo5204for = jsonUnmarshallerContext.f9028do.mo5204for();
        if (mo5204for == null) {
            return null;
        }
        try {
            return new Date(NumberFormat.getInstance(new Locale("en")).parse(mo5204for).longValue() * 1000);
        } catch (ParseException e) {
            StringBuilder m2493break = V1.m2493break("Unable to parse date '", mo5204for, "':  ");
            m2493break.append(e.getMessage());
            throw new AmazonClientException(m2493break.toString(), e);
        }
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Date mo5142do(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return m5156if(jsonUnmarshallerContext);
    }
}
