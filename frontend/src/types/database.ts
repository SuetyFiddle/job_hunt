//grouped for convenience, will split later if needed
export interface Experience {
  id: number
  company: string
  role: string
  startDate: string
  endDate: string
  description: string
  responsibilities: Responsibility[]
}

export interface Responsibility {
  id: number
  text: string
}

export interface Education {
  id: number
  institution: string
  degree: string
  result: string
  startDate: string
  endDate: string
  description: string
}

export interface Language {
  id: number
  name: string
  level: string
}

export interface Tool {
  id: number
  name: string
  level: string
}