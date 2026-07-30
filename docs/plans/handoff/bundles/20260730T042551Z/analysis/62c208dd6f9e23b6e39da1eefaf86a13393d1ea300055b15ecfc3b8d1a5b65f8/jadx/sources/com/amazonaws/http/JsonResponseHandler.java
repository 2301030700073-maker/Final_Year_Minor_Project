package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.transform.VoidJsonUnmarshaller;
import com.amazonaws.util.CRC32ChecksumCalculatingInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.JsonUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.zip.GZIPInputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class JsonResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {

    /* renamed from: do, reason: not valid java name */
    public static final Log f8769do = LogFactory.getLog("com.amazonaws.request");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Unmarshaller<T, JsonUnmarshallerContext> f8770do;

    public JsonResponseHandler(Unmarshaller<T, JsonUnmarshallerContext> unmarshaller) {
        this.f8770do = unmarshaller;
        if (unmarshaller == null) {
            this.f8770do = new VoidJsonUnmarshaller();
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: do */
    public final Object mo5052do(HttpResponse httpResponse) {
        CRC32ChecksumCalculatingInputStream cRC32ChecksumCalculatingInputStream;
        Log log = f8769do;
        log.trace("Parsing service response JSON");
        String str = httpResponse.m5049if().get("x-amz-crc32");
        InputStream m5048for = httpResponse.m5048for();
        if (m5048for == null) {
            m5048for = new ByteArrayInputStream("{}".getBytes(StringUtils.f9077do));
        }
        if (str != null) {
            cRC32ChecksumCalculatingInputStream = new CRC32ChecksumCalculatingInputStream(m5048for);
            m5048for = cRC32ChecksumCalculatingInputStream;
        } else {
            cRC32ChecksumCalculatingInputStream = null;
        }
        if ("gzip".equals(httpResponse.m5049if().get("Content-Encoding"))) {
            m5048for = new GZIPInputStream(m5048for);
        }
        AwsJsonReader m5215do = JsonUtils.m5215do(new InputStreamReader(m5048for, StringUtils.f9077do));
        try {
            AmazonWebServiceResponse amazonWebServiceResponse = new AmazonWebServiceResponse();
            T mo5142do = this.f8770do.mo5142do(new JsonUnmarshallerContext(m5215do));
            if (str != null) {
                if (cRC32ChecksumCalculatingInputStream.m5177if() != Long.parseLong(str)) {
                    throw new CRC32MismatchException();
                }
            }
            amazonWebServiceResponse.m4968new(mo5142do);
            HashMap hashMap = new HashMap();
            hashMap.put("AWS_REQUEST_ID", httpResponse.m5049if().get("x-amzn-RequestId"));
            amazonWebServiceResponse.m4966for(new ResponseMetadata(hashMap));
            log.trace("Done parsing service response");
            return amazonWebServiceResponse;
        } finally {
            try {
                m5215do.close();
            } catch (IOException e) {
                log.warn("Error closing json parser", e);
            }
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: if */
    public final void mo5053if() {
    }
}
