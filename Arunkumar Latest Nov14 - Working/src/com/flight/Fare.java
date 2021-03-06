package com.flight;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Fare
{
    private String id;

    private String origin;

    private String carrier;

    private String basisCode;

    private String kind;

    private String destination;

    public String getId ()
    {
        return id;
    }

    public void setId (String id)
    {
        this.id = id;
    }

    public String getOrigin ()
    {
        return origin;
    }

    public void setOrigin (String origin)
    {
        this.origin = origin;
    }

    public String getCarrier ()
    {
        return carrier;
    }

    public void setCarrier (String carrier)
    {
        this.carrier = carrier;
    }

    public String getBasisCode ()
    {
        return basisCode;
    }

    public void setBasisCode (String basisCode)
    {
        this.basisCode = basisCode;
    }

    public String getKind ()
    {
        return kind;
    }

    public void setKind (String kind)
    {
        this.kind = kind;
    }

    public String getDestination ()
    {
        return destination;
    }

    public void setDestination (String destination)
    {
        this.destination = destination;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [id = "+id+", origin = "+origin+", carrier = "+carrier+", basisCode = "+basisCode+", kind = "+kind+", destination = "+destination+"]";
    }
}