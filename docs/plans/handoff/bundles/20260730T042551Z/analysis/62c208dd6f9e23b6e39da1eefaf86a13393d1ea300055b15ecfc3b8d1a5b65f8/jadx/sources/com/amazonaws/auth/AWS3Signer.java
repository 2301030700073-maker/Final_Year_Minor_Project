package com.amazonaws.auth;

import com.amazonaws.DefaultRequest;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.facebook.internal.security.CertificateUtil;
import defpackage.Cif;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class AWS3Signer extends AbstractAWSSigner {

    /* renamed from: do, reason: not valid java name */
    public static final Log f8699do = LogFactory.getLog(AWS3Signer.class);

    /* renamed from: while, reason: not valid java name */
    public static ArrayList m4985while(DefaultRequest defaultRequest) {
        ArrayList arrayList = new ArrayList();
        Iterator it = defaultRequest.f8686do.entrySet().iterator();
        while (it.hasNext()) {
            String str = (String) ((Map.Entry) it.next()).getKey();
            String m5191do = StringUtils.m5191do(str);
            if (m5191do.startsWith("x-amz") || m5191do.equals("host")) {
                arrayList.add(str);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @Override // com.amazonaws.auth.Signer
    /* renamed from: if, reason: not valid java name */
    public final void mo4986if(DefaultRequest defaultRequest, AWSCredentials aWSCredentials) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials m5004const = AbstractAWSSigner.m5004const(aWSCredentials);
        UUID.randomUUID().toString();
        String m5182if = DateUtils.m5182if(AbstractAWSSigner.m5000break(AbstractAWSSigner.m5002catch(defaultRequest)));
        defaultRequest.m4975do("Date", m5182if);
        defaultRequest.m4975do("X-Amz-Date", m5182if);
        String host = defaultRequest.m4977for().getHost();
        if (HttpUtils.m5189new(defaultRequest.m4977for())) {
            StringBuilder m6916goto = Cif.m6916goto(host, CertificateUtil.DELIMITER);
            m6916goto.append(defaultRequest.m4977for().getPort());
            host = m6916goto.toString();
        }
        defaultRequest.m4975do("Host", host);
        if (m5004const instanceof AWSSessionCredentials) {
            defaultRequest.m4975do("x-amz-security-token", ((AWSSessionCredentials) m5004const).mo4999for());
        }
        String m5186do = HttpUtils.m5186do(defaultRequest.m4977for().getPath(), defaultRequest.m4978goto());
        StringBuilder sb = new StringBuilder();
        sb.append(defaultRequest.m4982try().toString());
        sb.append("\n");
        sb.append(AbstractAWSSigner.m5005else(m5186do));
        sb.append("\n");
        sb.append(AbstractAWSSigner.m5001case(defaultRequest.m4976else()));
        sb.append("\n");
        ArrayList m4985while = m4985while(defaultRequest);
        for (int i = 0; i < m4985while.size(); i++) {
            m4985while.set(i, StringUtils.m5191do((String) m4985while.get(i)));
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry entry : defaultRequest.f8686do.entrySet()) {
            if (m4985while.contains(StringUtils.m5191do((String) entry.getKey()))) {
                treeMap.put(StringUtils.m5191do((String) entry.getKey()), entry.getValue());
            }
        }
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry2 : treeMap.entrySet()) {
            sb2.append(StringUtils.m5191do((String) entry2.getKey()));
            sb2.append(CertificateUtil.DELIMITER);
            sb2.append((String) entry2.getValue());
            sb2.append("\n");
        }
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append(AbstractAWSSigner.m5010this(defaultRequest));
        String sb3 = sb.toString();
        byte[] m5003class = AbstractAWSSigner.m5003class(sb3);
        f8699do.debug("Calculated StringToSign: ".concat(sb3));
        String m5011throw = AbstractAWSSigner.m5011throw(m5004const.mo4995do(), m5003class);
        StringBuilder sb4 = new StringBuilder("AWS3 ");
        sb4.append("AWSAccessKeyId=" + m5004const.mo4996if() + ",");
        sb4.append("Algorithm=HmacSHA256,");
        StringBuilder sb5 = new StringBuilder();
        StringBuilder sb6 = new StringBuilder("SignedHeaders=");
        Iterator it = m4985while(defaultRequest).iterator();
        boolean z = true;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!z) {
                sb6.append(";");
            }
            sb6.append(str);
            z = false;
        }
        sb5.append(sb6.toString());
        sb5.append(",");
        sb4.append(sb5.toString());
        sb4.append("Signature=" + m5011throw);
        defaultRequest.m4975do("X-Amzn-Authorization", sb4.toString());
    }
}
