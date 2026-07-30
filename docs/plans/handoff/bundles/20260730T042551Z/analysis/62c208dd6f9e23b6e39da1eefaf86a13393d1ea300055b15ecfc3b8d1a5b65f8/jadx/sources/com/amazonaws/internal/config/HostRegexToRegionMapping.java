package com.amazonaws.internal.config;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public class HostRegexToRegionMapping {

    /* renamed from: do, reason: not valid java name */
    public final String f8775do;

    /* renamed from: if, reason: not valid java name */
    public final String f8776if;

    public HostRegexToRegionMapping(String str, String str2) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty");
        }
        try {
            Pattern.compile(str);
            if (str2.isEmpty()) {
                throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: regionName must be non-empty");
            }
            this.f8775do = str;
            this.f8776if = str2;
        } catch (PatternSyntaxException e) {
            throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex", e);
        }
    }
}
