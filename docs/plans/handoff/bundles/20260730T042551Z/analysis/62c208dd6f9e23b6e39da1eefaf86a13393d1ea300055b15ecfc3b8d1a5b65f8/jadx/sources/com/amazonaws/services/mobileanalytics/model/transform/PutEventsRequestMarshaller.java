package com.amazonaws.services.mobileanalytics.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.internal.ListWithAutoConstructFlag;
import com.amazonaws.services.mobileanalytics.model.Event;
import com.amazonaws.services.mobileanalytics.model.PutEventsRequest;
import com.amazonaws.services.mobileanalytics.model.Session;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.facebook.internal.Utility;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public class PutEventsRequestMarshaller {
    /* renamed from: do, reason: not valid java name */
    public static DefaultRequest m5151do(PutEventsRequest putEventsRequest) {
        DefaultRequest defaultRequest = new DefaultRequest(putEventsRequest, "AmazonMobileAnalytics");
        defaultRequest.m4975do("X-Amz-Target", "AmazonMobileAnalytics.PutEvents");
        defaultRequest.f8681do = HttpMethodName.POST;
        String str = putEventsRequest.f9002break;
        if (str != null) {
            Charset charset = StringUtils.f9077do;
            defaultRequest.m4975do("x-amz-Client-Context", str);
        }
        String str2 = putEventsRequest.f9003catch;
        if (str2 != null) {
            Charset charset2 = StringUtils.f9077do;
            defaultRequest.m4975do("x-amz-Client-Context-Encoding", str2);
        }
        String replaceAll = "/2014-06-05/events".replaceAll("//", "/");
        if (replaceAll.contains("?")) {
            String substring = replaceAll.substring(replaceAll.indexOf("?") + 1);
            replaceAll = replaceAll.substring(0, replaceAll.indexOf("?"));
            for (String str3 : substring.split("[;&]")) {
                String[] split = str3.split("=");
                if (split.length == 2 && !split[1].isEmpty()) {
                    defaultRequest.m4979if(split[0], split[1]);
                }
            }
        }
        defaultRequest.f8684do = replaceAll;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream, Utility.DEFAULT_STREAM_BUFFER_SIZE);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(gZIPOutputStream, StringUtils.f9077do);
            AwsJsonWriter m5217if = JsonUtils.m5217if(outputStreamWriter);
            m5217if.mo5213new();
            ListWithAutoConstructFlag m5150do = putEventsRequest.m5150do();
            if (m5150do != null && (!m5150do.f8773do || !m5150do.isEmpty())) {
                m5217if.mo5211for("events");
                m5217if.mo5209do();
                Iterator<T> it = m5150do.iterator();
                while (it.hasNext()) {
                    Event event = (Event) it.next();
                    if (event != null) {
                        m5217if.mo5213new();
                        if (event.f8997break != null) {
                            m5217if.mo5211for("eventType");
                            m5217if.mo5214try(event.f8997break);
                        }
                        if (event.f8998catch != null) {
                            m5217if.mo5211for("timestamp");
                            m5217if.mo5214try(event.f8998catch);
                        }
                        Session session = event.f8999do;
                        if (session != null) {
                            m5217if.mo5211for("session");
                            m5217if.mo5213new();
                            if (session.f9005break != null) {
                                m5217if.mo5211for("id");
                                m5217if.mo5214try(session.f9005break);
                            }
                            if (session.f9008do != null) {
                                m5217if.mo5211for("duration");
                                m5217if.mo5212if(session.f9008do);
                            }
                            if (session.f9006catch != null) {
                                m5217if.mo5211for("startTimestamp");
                                m5217if.mo5214try(session.f9006catch);
                            }
                            if (session.f9007class != null) {
                                m5217if.mo5211for("stopTimestamp");
                                m5217if.mo5214try(session.f9007class);
                            }
                            m5217if.mo5208case();
                        }
                        if (event.m5148do() != null) {
                            m5217if.mo5211for("attributes");
                            m5217if.mo5213new();
                            for (Map.Entry<String, String> entry : event.m5148do().entrySet()) {
                                if (entry.getValue() != null) {
                                    m5217if.mo5211for(entry.getKey());
                                    m5217if.mo5214try(entry.getValue());
                                }
                            }
                            m5217if.mo5208case();
                        }
                        if (event.m5149if() != null) {
                            m5217if.mo5211for("metrics");
                            m5217if.mo5213new();
                            for (Map.Entry<String, Double> entry2 : event.m5149if().entrySet()) {
                                if (entry2.getValue() != null) {
                                    m5217if.mo5211for(entry2.getKey());
                                    m5217if.mo5212if(entry2.getValue());
                                }
                            }
                            m5217if.mo5208case();
                        }
                        m5217if.mo5208case();
                    }
                }
                m5217if.mo5210else();
            }
            m5217if.mo5208case();
            m5217if.flush();
            gZIPOutputStream.finish();
            outputStreamWriter.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            defaultRequest.f8683do = new ByteArrayInputStream(byteArray);
            defaultRequest.m4975do("Content-Length", Integer.toString(byteArray.length));
            defaultRequest.m4975do("Content-Type", "application/x-amz-json-1.0");
            defaultRequest.m4975do("Content-Encoding", "gzip");
            return defaultRequest;
        } catch (Throwable th) {
            throw new AmazonClientException("Unable to marshall request to JSON: " + th.getMessage(), th);
        }
    }
}
