package org.mozilla.javascript.optimizer;

import jdk.dynalink.Operation;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public enum RhinoOperation implements Operation {
    BIND,
    GETNOWARN,
    GETSUPER,
    GETWITHTHIS,
    GETWITHTHISOPTIONAL,
    GETELEMENT,
    GETELEMENTSUPER,
    GETINDEX,
    SETSTRICT,
    SETCONST,
    SETSUPER,
    SETELEMENT,
    SETELEMENTSUPER,
    SETINDEX,
    ADD,
    EQ,
    SHALLOWEQ,
    COMPARE_GT,
    COMPARE_LT,
    COMPARE_GE,
    COMPARE_LE,
    TOBOOLEAN,
    TOINT32,
    TOUINT32,
    TONUMBER,
    TONUMERIC
}
