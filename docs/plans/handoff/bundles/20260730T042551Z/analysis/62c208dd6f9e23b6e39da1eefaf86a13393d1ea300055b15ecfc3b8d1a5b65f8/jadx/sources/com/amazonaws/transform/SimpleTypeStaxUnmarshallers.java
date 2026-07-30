package com.amazonaws.transform;

import com.amazonaws.util.DateUtils;
import defpackage.V1;
import java.util.Date;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class SimpleTypeStaxUnmarshallers {

    /* renamed from: do, reason: not valid java name */
    public static final Log f9031do = LogFactory.getLog(SimpleTypeStaxUnmarshallers.class);

    public static class DateStaxUnmarshaller implements Unmarshaller<Date, StaxUnmarshallerContext> {

        /* renamed from: do, reason: not valid java name */
        public static DateStaxUnmarshaller f9032do;

        /* renamed from: if, reason: not valid java name */
        public static Date m5159if(StaxUnmarshallerContext staxUnmarshallerContext) {
            String m5162for = staxUnmarshallerContext.m5162for();
            if (m5162for == null) {
                return null;
            }
            try {
                return DateUtils.m5178case(m5162for);
            } catch (Exception e) {
                Log log = SimpleTypeStaxUnmarshallers.f9031do;
                StringBuilder m2493break = V1.m2493break("Unable to parse date '", m5162for, "':  ");
                m2493break.append(e.getMessage());
                log.warn(m2493break.toString(), e);
                return null;
            }
        }

        @Override // com.amazonaws.transform.Unmarshaller
        /* renamed from: do */
        public final /* bridge */ /* synthetic */ Date mo5142do(StaxUnmarshallerContext staxUnmarshallerContext) {
            return m5159if(staxUnmarshallerContext);
        }
    }

    public static class IntegerStaxUnmarshaller implements Unmarshaller<Integer, StaxUnmarshallerContext> {

        /* renamed from: do, reason: not valid java name */
        public static IntegerStaxUnmarshaller f9033do;

        @Override // com.amazonaws.transform.Unmarshaller
        /* renamed from: do */
        public final Integer mo5142do(StaxUnmarshallerContext staxUnmarshallerContext) {
            String m5162for = staxUnmarshallerContext.m5162for();
            if (m5162for == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(m5162for));
        }
    }

    public static class StringStaxUnmarshaller implements Unmarshaller<String, StaxUnmarshallerContext> {

        /* renamed from: do, reason: not valid java name */
        public static StringStaxUnmarshaller f9034do;

        /* renamed from: if, reason: not valid java name */
        public static StringStaxUnmarshaller m5160if() {
            if (f9034do == null) {
                f9034do = new StringStaxUnmarshaller();
            }
            return f9034do;
        }

        @Override // com.amazonaws.transform.Unmarshaller
        /* renamed from: do */
        public final String mo5142do(StaxUnmarshallerContext staxUnmarshallerContext) {
            return staxUnmarshallerContext.m5162for();
        }
    }
}
